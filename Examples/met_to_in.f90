program meters_to_inches
    ! converts meters to inches
    implicit none
    real :: meters
    real, parameter :: inches_per_meter = 39.37

    print *, "Enter a length in meters"
    read *, meters
    print *, meters, " meters = ", &
        meters*inches_per_meter, " inches"
end program
