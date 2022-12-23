module swap_module
    contains
    subroutine swap(a, b)
        real, intent(in out) :: a, b
        real :: temp
        temp = a
        a = b
        b = temp
    end subroutine
end module
