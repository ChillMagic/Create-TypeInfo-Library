@echo off
ruby create.rb typeinfo.txt > typeinfo.c
gcc -std=c99 -o typeinfo.o -c typeinfo.c
ar -r libtypeinfo.a typeinfo.o
pause
