subroutine power(x,n,y)
	implicit none

	integer::n,i
	double precision::x,y
	y=1.0
	do i=1,n
		y=y*x
	end do
end subroutine power
