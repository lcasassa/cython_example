#from libcpp.string cimport string
#from cpython cimport bint

cdef extern from "print_hola.h":
    void print_hola()

def print_hola2():
    print_hola()
    return

