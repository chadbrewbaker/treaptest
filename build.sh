gcc trp_bench.c -O3 -Wall -o trp_bench
gcc trp_test.c -O3 -Wall -o trp_test
gcc -c doubleit.c
ghc -v -L./ -O --make Treaper
./Treaper --output treaper.html
