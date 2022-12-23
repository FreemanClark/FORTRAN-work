program integral
    implicit none
    intrinsic :: sin
    real :: a, b, h, total
    integer :: i, n
    read *, n ! # of trapezoids, I.O.W., the precision of the integral
    print *, "Input data n:" , n
    read *, a, b
    print *, "Input data a: ", a
    print *, "           b: ", b

    h = (b - a) / n
    total = 0.5 * (sin(a) + sin(b)) ! first and last terms
    do i = 1, n-1
        total = total + sin(a + i * h)
    end do

    print *, "Trapezoidal approximation to the area =", h * total
end program
