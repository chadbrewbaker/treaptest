LIBNAME=libtrp_criterion.a

main: lib
	ghc -O2 -fvia-C -L. -ltrp_criterion -fglasgow-exts -ffi --make Treaper.hs -o treaper

clean:
	rm *.o *.a *.hi treaper *~

trp_criterion.o: trp_criterion.c trp_criterion.h

lib: trp_criterion.o
	ar rc ${LIBNAME} trp_criterion.o
	ranlib ${LIBNAME}
