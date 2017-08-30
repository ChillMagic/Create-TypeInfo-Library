@echo off

call create.cmd build-s
call create.cmd build-d

cd build-s
copy /y ..\test.c
gcc -std=c99 -o typeinfo.o -c typeinfo.c
ar -r libtypeinfo.a typeinfo.o
gcc -std=c99 -o test test.c -L. -ltypeinfo
cd ..

cd build-d
copy /y ..\test.c
gcc -std=c99 -shared -fPIC typeinfo.c -o libtypeinfo.dll
gcc -std=c99 -o test test.c -L. -ltypeinfo
cd ..

cls

echo ====== Testing Static Library ======
build-s\test
echo.

echo ====== Testing Dynamic Library ======
build-d\test
echo.

pause
