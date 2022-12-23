program value_test
    implicit none
    real :: x = 1.1
    call s(x)
    print *, x

contains

subroutine s(d)
    real, value :: d
    d = 2 * d
    print *, d
end subroutine

end program
