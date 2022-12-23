program escape
    ! Takes in initial velocity, v
    ! output maximum height attained
    !   if object does not escape Earth
    ! output final escape velocity, v_final,
    !   if object escapes Earth
    ! g = gravity near Earth's surface in m/s^2
    ! RE = radius of Earth in m
    implicit none
    real :: v, h, v_final
    real, parameter :: g = 9.80, RE = 6.366e6

    read *, v
    print *, "Initial velocity of object = ", v, " m/s"
    if(v ** 2 < 2 * g * RE) then
        h = RE / (1 - v ** 2 / (2 * g * RE))
        print *, "The object attained a height of ", &
            h - RE, "m"
        print *, "above the Earth's surface " // &
            "before returning to Earth."
    else if (v ** 2 == 2 * g * RE) then
        h = RE / (1 - v ** 2 / (2 * g * RE))
        print *, "This velocity is the escape velocity of the Earth"
        print *, "The object just barely escapes from Earth's gravity"
    else
        v_final = sqrt(v ** 2 - 2 * g * RE)
        print *, "The object escapes with velocity", &
            v_final, "m/s."
    end if
end program
