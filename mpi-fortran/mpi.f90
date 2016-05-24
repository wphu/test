!  mpi.f90 
!
!  FUNCTIONS:
!	mpi      - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: mpi_test
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

	program mpi_test

	use mpi
        integer ::LB(2),RB(2),LBc(2),RBc(2),a,b
	real(8) ::LBs(10,10),RBs(10,10),LBr(10,10),RBr(10,10)
	integer ::i,j,L_NBR,R_NBR,myid,Nprocess,ierr,ITAG,ISTATUS
	real(8) :: r
         

        
	Call MPI_INIT(ierr)
        Call MPI_COMM_RANK(MPI_COMM_WORLD, myid, ierr)
	CALL MPI_COMM_SIZE(MPI_COMM_WORLD,NProcess,ierr)
        
        LB = myid + 1
	do i=1,LB(1)
	   call random_number(r)
	   LBs = r*myid 
        end do
	RB = myid + 1
	do i=1,RB(1)
	   call random_number(r)
	   RBs = r*myid 
        end do
      L_NBR=myid-1
      R_NBR=myid+1
      IF(MYID==0)           L_NBR=MPI_PROC_NULL
      IF(MYID==Nprocess-1)  R_NBR=MPI_PROC_NULL
	  write(*,*) L_NBR,R_NBR

	ITAG=101
	CALL MPI_SENDRECV (RB(1),1, MPI_real, R_NBR, ITAG,LBc(1),1, MPI_real, L_NBR, ITAG, MPI_COMM_WORLD, ISTATUS, IERR)

    !ITAG=102
    !CALL MPI_SENDRECV (LB(1),1, MPI_DOUBLE_PRECISION, L_NBR, ITAG,RBc(1),1, MPI_DOUBLE_PRECISION, R_NBR, ITAG, MPI_COMM_WORLD, ISTATUS, IERR)


!    ITAG=103
!	call MPI_SENDRECV (LBs(1,1), LB, MPI_DOUBLE_PRECISION, L_NBR, ITAG,RBR(1,1), RBc, MPI_DOUBLE_PRECISION,R_NBR, ITAG,MPI_COMM_WORLD, ISTATUS, IERR)
   ! CALL MPI_BARRIER (MPI_COMM_WORLD, IERR)
!	a = RB(1) 
!	b = LBc(1)
    
	ITAG=104
        call MPI_SENDRECV (RBs, RB(1), MPI_real, R_NBR, ITAG,LBR, LBc(1), MPI_real,L_NBR, ITAG,MPI_COMM_WORLD, ISTATUS, IERR)
	write(*,*) LBR(1,1)
        write(*,*) LBc(1)
	
	call MPI_FINALIZE(ierr)

	end

	
	
