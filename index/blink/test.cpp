#ifdef OPTIMIZED
#include "tree_optimized.h"
#else
#include "tree.h"
#endif

#include <ctime>
#include <vector>
#include <thread>
#include <iostream>
#include <random>
#include <algorithm>

using Key_t = uint64_t;

inline uint64_t _Rdtsc(){
    uint32_t lo, hi;
    asm volatile("rdtsc" : "=a" (lo), "=d" (hi));
    return (((uint64_t)hi << 32 ) | lo);
}

using namespace BLINK;

static int* core_alloc_map_hyper;
static int* core_alloc_map_numa;
int max_core_count;
int num_socket;
int cores_per_socket;

void cpuinfo(){
    FILE* fp;
    std::string cmd = "lscpu";

    fp = popen("lscpu", "r");
    if(!fp){
        std::cerr << "failed to collect cpu information" << std::endl;
        exit(0);
    }

    int cores_per_socket = 0;
    int num_sockets = 0;
    char temp[1024];
    while(fgets(temp, 1024, fp) != NULL){
        if(strncmp(temp, "CPU(s):", 7) == 0){
            char _temp[100];
            char _temp_[100];
            sscanf(temp, "%s %s\n", _temp, _temp_);
            max_core_count = atoi(_temp_);

            core_alloc_map_hyper = new int[max_core_count]; // hyperthreading
            core_alloc_map_numa = new int[max_core_count]; // hyperthreading
        }
        if(strncmp(temp, "Core(s) per socket:", 19) == 0){
            char _temp[100];
            char _temp_[100];
            sscanf(temp, "%s %s %s %s\n", _temp, _temp, _temp, _temp_);
            cores_per_socket = atoi(_temp_);
        }
        if(strncmp(temp, "Socket(s):", 10) == 0){
            char _temp[100];
            char _temp_[100];
            sscanf(temp, "%s %s\n", _temp, _temp_);
            num_socket = atoi(_temp_);
        }


        if(strncmp(temp, "NUMA node", 9) == 0){
            if(strncmp(temp, "NUMA node(s)", 12) == 0) continue;
            char _temp[64];
            char _temp_[64];
            char __temp[64];
            char __temp_[64];
            sscanf(temp, "%s %s %s %s\n", _temp, _temp_, __temp, __temp_);
            int num_node;
            char dummy[4], nodes[4];
            sscanf(_temp_, "%c%c%c%c%s", &dummy[0], &dummy[1], &dummy[2], &dummy[3], nodes);
            num_node = atoi(nodes);
            char* node;
            char* ptr = __temp_;
            int idx= num_node*cores_per_socket*2;
            node = strtok(ptr, ",");
            while(node != nullptr){
                core_alloc_map_hyper[idx++] = atoi(node);
                node = strtok(NULL, ",");
            }
        }

    }

    for(int i=0; i<max_core_count; i++){
        core_alloc_map_numa[i] = i;
    }

}

inline void pin_to_core(size_t thread_id){
    cpu_set_t cpu_set;
    CPU_ZERO(&cpu_set);

    size_t core_id = thread_id % max_core_count;
    CPU_SET(core_alloc_map_hyper[core_id], &cpu_set);

    int ret = pthread_setaffinity_np(pthread_self(), sizeof(cpu_set), &cpu_set);
    if(ret != 0){
        std::cerr << __func__ << ": pthread_set_affinity_np returns non-zero" << std::endl;
        exit(0);
    }
}

template <typename Fn, typename... Args>
void start_threads(btree_t<Key_t>* tree, uint64_t num_threads, Fn&& fn, Args&& ...args){
    std::vector<std::thread> threads;
    auto fn2 = [&fn](uint64_t thread_id, Args ...args){
        pin_to_core(thread_id);
        fn(thread_id, args...);
        return;
    };

    for(auto thread_iter=0; thread_iter<num_threads; ++thread_iter){
        threads.emplace_back(std::thread(fn2, thread_iter, std::ref(args...)));
    }

    for(auto& t: threads) t.join();
}


int main(int argc, char* argv[]){
    int num_data = atoi(argv[1]);
    int num_threads = atoi(argv[2]);
    int insert_only = atoi(argv[3]);
#ifdef MIXED
    int insert_ratio = atoi(argv[4]);
#endif
    cpuinfo();
    Key_t* keys = new Key_t[num_data];
    for(int i=0; i<num_data; i++){
	keys[i] = i+1;
    }
    std::random_shuffle(keys, keys+num_data);

    std::vector<std::thread> inserting_threads;
    std::vector<std::thread> searching_threads;
    std::vector<std::thread> mixed_threads;

    std::vector<uint64_t> notfound_keys[num_threads];

    btree_t<Key_t>* tree = new btree_t<Key_t>();
    std::cout << "inode_size(" << inode_t<Key_t>::cardinality << "), lnode_size(" << lnode_t<Key_t>::cardinality << ")" << std::endl;

    struct timespec start, end;

    std::atomic<uint64_t> insert_time = 0;
    std::atomic<uint64_t> search_time = 0;

#ifdef MIXED
    int half = num_data / 2;
    size_t chunk = half / num_threads;
    auto mixed = [&tree, &keys, &notfound_keys, &insert_ratio, num_threads, half](uint64_t tid, bool){
	int _not_found = 0;
	size_t chunk = half / num_threads;
	int from = chunk * tid;
	int to = chunk * (tid + 1);

	for(int i=from; i<to; i++){
	    int ratio = rand() % 10;
	    if(ratio < insert_ratio)
		tree->insert(keys[i+half], (uint64_t)&keys[i+half]);
	    else{
		auto ret = tree->update(keys[i], keys[i]);
		if(ret == false){
		    std::cerr << "update failed" << std::endl;
		}
		auto _ret = tree->lookup(keys[i]);
		if(_ret != keys[i]){
		    std::cout << "returns different value:    key(" << keys[i] << "), value(" << _ret << ")" << std::endl;
		}
	    }
	}
    };

    std::cout << "wramup starts" << std::endl;
    for(int i=0; i<half; i++){
	tree->insert(keys[i], (uint64_t)&keys[i]);
    }
    std::cout << "mixed starts" << std::endl;
    clock_gettime(CLOCK_MONOTONIC, &start);
    start_threads(tree, num_threads, mixed, false);
    clock_gettime(CLOCK_MONOTONIC, &end);

    uint64_t elapsed = end.tv_nsec - start.tv_nsec + (end.tv_sec - start.tv_sec)*1000000000;
    std::cout << "elapsed time: " << elapsed/1000.0 << " usec" << std::endl;
    std::cout << "throughput: " << half / (double)(elapsed/1000000000.0) / 1000000 << " mops/sec" << std::endl;

#else

    size_t chunk = num_data / num_threads;
    auto insert = [&tree, &keys, &insert_time, num_data, num_threads](uint64_t tid, bool){
	size_t chunk = num_data / num_threads;
	int from = chunk * tid;
	int to = chunk * (tid + 1);
	for(int i=from; i<to; i++){
	    tree->insert(keys[i], (uint64_t)&keys[i]);
	}
    };
    auto search = [&tree, &keys, &notfound_keys, num_data, num_threads](uint64_t tid, bool){
	size_t chunk = num_data / num_threads;
	int from = chunk * tid;
	int to = chunk * (tid + 1);
	for(int i=from; i<to; i++){
	    auto ret = tree->lookup(keys[i]);
	    if(ret != (uint64_t)&keys[i]){
		notfound_keys[tid].push_back(i);
	    }
	}
    };

    std::cout << "Insertion starts" << std::endl;
    clock_gettime(CLOCK_MONOTONIC, &start);
    start_threads(tree, num_threads, insert, false);
    clock_gettime(CLOCK_MONOTONIC, &end);
    uint64_t elapsed = end.tv_nsec - start.tv_nsec + (end.tv_sec - start.tv_sec)*1000000000;
    std::cout << "elapsed time: " << elapsed/1000.0 << " usec" << std::endl;
    std::cout << "throughput: " << num_data / (double)(elapsed/1000000000.0) / 1000000 << " mops/sec" << std::endl;


    if(insert_only){
	std::cout << "Search starts" << std::endl;
	clock_gettime(CLOCK_MONOTONIC, &start);
	start_threads(tree, num_threads, search, false);
	clock_gettime(CLOCK_MONOTONIC, &end);
	elapsed = end.tv_nsec - start.tv_nsec + (end.tv_sec - start.tv_sec)*1000000000;
	std::cout << "elapsed time: " << elapsed/1000.0 << " usec" << std::endl;
	std::cout << "throughput: " << num_data / (double)(elapsed/1000000000.0) / 1000000 << " mops/sec" << std::endl;

	for(int i=0; i<num_threads; i++){
	    for(auto& it: notfound_keys[i]){
		auto ret = tree->lookup(keys[it]);
		if(ret != (uint64_t)&keys[it])
		    std::cout << "key " << keys[it] << " not found" << std::endl;
	    }
	}

	std::cout << "finding it anyway\n\n" << std::endl;
	for(int i=0; i<num_threads; i++){
	    for(auto& it: notfound_keys[i]){
		auto ret = tree->find_anyway(keys[it]);
		if(ret != (uint64_t)&keys[it])
		    std::cout << "key " << keys[it] << " not found" << std::endl;
		   else{
		// lower key
		std::cout << "lower key find_anyway" << std::endl;
		ret = tree->find_anyway(keys[it]-1);
		if(ret != (uint64_t)&keys[it]-1)
		std::cout << "key " << keys[it]-1 << " not found" << std::endl;
		}
	    }
	}
    }

    tree->sanity_check();

    auto height = tree->height();
    std::cout << "Height of tree: " << height+1 << std::endl;

    auto util = tree->utilization();
    std::cout << "Utilization of leaf nodes: " << util*100 << " \%" << std::endl;


#endif
//    tree->print_internal();
//    tree->print_leaf();
    return 0;
}
