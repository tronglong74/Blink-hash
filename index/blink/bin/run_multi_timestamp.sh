#echo "-----------------scan--------------"
#./timestamp 100000000 1  0
#./timestamp 100000000 2  0
#./timestamp 100000000 4  0
#./timestamp 100000000 8  0
#./timestamp 100000000 16  0
#echo "-----------------read--------------"
#./timestamp 100000000 1  1
#./timestamp 100000000 2  1
#./timestamp 100000000 4  1
#./timestamp 100000000 8  1
#./timestamp 100000000 16  1
echo "-----------------mix--------------"
./timestamp 100000000 1  2
./timestamp 100000000 2  2
./timestamp 100000000 4  2
./timestamp 100000000 8  2
./timestamp 100000000 16  2
