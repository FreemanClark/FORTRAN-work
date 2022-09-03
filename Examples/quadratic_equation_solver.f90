program quadratic_equation_solver
    ! Calculate the roots of a quadratic equation
    implicit none
!   Variables:
!       a, b, c: coefficients
!       sub_expression: value common to both roots
!       x1, x2: roots

    real :: a, b, c
    complex :: x1, x2, sub_expression
    ! read
    print *, "Enter a, the coefficient of x^2: "
    read *, a
    print *, "Enter b, the coefficient of x: "
    read *, b
    print *, "Enter c, the constant term: "
    read *, c

    ! calculate roots
    if ( a == 0 )
        x2 = 0
        x1 = -c / b
    else
        sub_expression = sqrt(cmplx(b ** 2 - 4 * a * c))
        x1 = (-b + sub_expression) / (2 * a)
        x2 = (-b - sub_expression) / (2 * a)
    end if



    ! output
    print *, "The roots are: "
    print *, "x1 = ", x1
    print *, "x2 = ", x2

end program
