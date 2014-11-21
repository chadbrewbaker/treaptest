gcc trp_bench.c -O3 -Wall -o trp_bench
gcc trp_test.c -O3 -Wall -o trp_test
echo not gcc -c doubleit.c
echo not ghc -v -L./ -O --make Treaper
make
./treaper --output treaper.html
