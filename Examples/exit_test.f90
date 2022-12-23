program exit_test
    implicit none
    real, dimension(5) :: x = [1, 2, 3, 4, 5]

    find: block
        integer :: i
        do i = 1, 5
            if(x(i) > 2.2) then
                print *, "Location:", i
                exit find
            end if
        end do
        print *, "NOT FOUND"
    end block find
end program exit_test
