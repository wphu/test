PRGM		=test_cpp
FC			?=ifort
CC			?=icc
FFLAGS		=-O2
CFLAGS 		=
CPPFLAGS	=-O2
LDFLAGS 	=
NETCDFDIR	=
INCS		=
LIBS		=
FCOMPILE 	= $(FC) $(FFLAGS)
CCOMPILE 	= $(CC) $(CPPFLAGS) $(CFLAGS)
LINKCC 		= $(CC) $(LDFLAGS)

SRCS := $(wildcard *.cpp)
OBJS := $(patsubst %.cpp,%.o,$(SRCS))

all :  $(PRGM)

$(PRGM):$(OBJS)
	$(LINKCC) $(OBJS) $(LIBS)  -o $(PRGM)

%.o:%.cpp
	$(CCOMPILE) -c $(INCS) $< -o $@

%.o: %.f90
	$(FCOMPILE) -c $(INCS) $< -o $@

clean:
	rm -f $(OBJS) $(PRGM)
clean-data:
	rm -f *~ *.txt *.dat *.nc errfile outfile
