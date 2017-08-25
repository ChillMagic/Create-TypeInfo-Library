ruby create.rb typeinfo
gcc -std=c99 -o typeinfo.o -c typeinfo.c
ar -r libtypeinfo.a typeinfo.o
