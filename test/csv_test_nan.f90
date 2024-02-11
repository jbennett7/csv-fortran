program csv_test_nan

    use csv_module
    use iso_fortran_env, only: wp => real64, sp => real32

    implicit none

    call test_nan()
contains

    subroutine test_nan()
        implicit none
        type(csv_file) :: f
        integer, dimension(:), allocatable :: x
        logical :: status_ok

        write(*,*) ''
        write(*,*) '============================'
        write(*,*) ' csv_test_nan'
        write(*,*) '============================'
        write(*,*) ''

        call f%read('files/nan_test.csv',header_row=1,status_ok=status_ok)
        call f%get(1,x,status_ok)
        print *, x
    end subroutine test_nan
    
end program csv_test_nan
