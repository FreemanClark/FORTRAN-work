program fxntest
    use functions
    implicit none
    real :: a, b, c, d, avg
    real :: rad, height, volume


    read *, a, b, c, d
    avg = average_of_4(a, b, c, d)
    print *, "Average:", avg


    read *, rad, height
    volume = cone_volume(rad, height)
    print *, "Volume:", volume
end program
