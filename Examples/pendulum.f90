program pendulum
    ! calculates frequency and period
    ! of a pendulum with length L

    implicit none
    real :: L, f, T
    real, parameter :: pi = 3.14159, &
                       g = 9.80665

    print *, "Enter a value for L: "
    read *, L
    f = (1.0 / (2.0 * pi)) * sqrt(g / L)
    T = 1.0 / f
    print *, "The frequency of the pendulum is ", &
            f, "swings / sec."
    print *, "Each swing takes", T, "seconds."
end program
