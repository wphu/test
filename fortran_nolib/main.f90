program main
	implicit none

	integer::n
	double precision::x,y
	
	open(10,file='result.txt')
	x=15.0
	n=6
	call power(x,n,y)
	write(10,*) x,"^",n,"= ",y
	close(10)
end program main
