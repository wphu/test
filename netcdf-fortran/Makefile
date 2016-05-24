	SHELL		=	/bin/sh
	EXEC		=	exename
	FC		=	ifort
	NETCDFDIR	=/home/huwanpeng/opt/netcdf-fortran-intel
	HDF5LIB		=/home/huwanpeng/opt/hdf5-intel
	INCS		=-I$(NETCDFDIR)/include	
	LIBS		=-L$(NETCDFDIR)/lib -lnetcdff

objects=main.o 

$ (EXEC) :$(objects)
#echo objects
	$(FC) $(CFLAGS) -o $(EXEC) $(objects) $(LIBS)

%.o:%.f90
	$(FC) -c $(CFLAGS)  $< -o $@ $(INCS)

clean:
	rm *.o $(EXEC)	
clean-data:
	rm -f *.txt *.dat *.nc errfile outfile
