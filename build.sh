gcc trp_bench.c -O3 -Wall -o trp_bench
gcc trp_test.c -O3 -Wall -o trp_test
ghc -O --make Treaper
./Treaper --output treaper.html
