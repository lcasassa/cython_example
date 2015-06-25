all:
	cython holamundo.pyx
	g++ -c `pkg-config --cflags python` -o holamundo.o holamundo.c -fPIC
	g++ -c -o print_hola.o print_hola.c -fPIC
	g++ -shared -o holamundo.so holamundo.o print_hola.o `pkg-config --cflags --libs python`
	python test.py

clean:
	rm *.o *.so holamundo.c
