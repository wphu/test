SHELL		= /bin/sh
DEF_FLAGS	= #-P -C -traditional
EXEC		= exename
FC		= mpif90
FFLAGS		=-O2
CC		=mpicc
CFLAGS		=  -O3 #-mcmodel=medium  -shared-intel   # debeg flag
CDEFS		= -DAdd_
HEADER		= ../../SRC
BLASLIB   	= ../../lib/blas_linux.a
SUPERLULIB	= 
LIBS		=

objects=mpi.o

$(EXEC):$(objects)
	$(CC) $(CFLAGS) $(objects) $(LIBS) -o $@

%.o:%.c
	$(CC) $(FFLAGS) -c $< $(VERBOSE)
clean:
	rm -f *.o *.mod  exename
clean-data:
	rm -f *.txt errfile outfile


