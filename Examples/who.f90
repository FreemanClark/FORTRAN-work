program who
    implicit none
    character(len=20) :: whatname

    print *, "What's your name? "
    read *, whatname
    print *, "You are ", whatname
end program
