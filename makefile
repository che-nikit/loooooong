all:
	gcc -c -fPIC first.c -o first.o
	gcc -shared -o libfirst.so first.o
	g++ -c -fPIC second.cpp -o second.o
	g++ -shared -L. -lfirst -o libsecond.so second.o
	swig -c++ -perl -o third_wrap.cpp third.i
	gcc -fPIC -c third_wrap.cpp -o third_wrap.o -I/usr/lib/perl/5.14.2/CORE
	g++ -shared third_wrap.o -L. -lsecond -lfirst -o _third.so
