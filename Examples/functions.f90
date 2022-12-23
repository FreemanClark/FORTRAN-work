module functions
    contains
    function median_of_3(a, b, c) result(median)
        real, intent(in) :: a, b, c
        real :: median, maximum, minimum
        if(c >= a .and. a >= b) then
            maximum = c
            median = a
            minimum = b
        else if(b >= a .and. a >= c) then
            maximum = b
            median = a
            minimum = c
        else if(a >= b .and. b >= c) then
            maximum = a
            median = b
            minimum = c
        end if
    end function

    function average_of_4(a, b, c, d) result(average)
        real, intent(in) :: a, b, c, d
        real :: average, sum
        sum = a + b + c + d
        average = sum / 4
    end function

    function cone_volume(rad, height) result(volume)
        real, intent(in) :: rad, height ! radius and height of cone
        real :: volume
        real, parameter :: pi = 3.141592653589793238462643383279502884197
        volume = (pi * (rad ** 2) * height) / 3.0000
    end function
end module
