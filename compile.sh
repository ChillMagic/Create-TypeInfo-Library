mkdir build-s
mkdir build-d
ruby create.rb typeinfo.txt typeinfo build-s
ruby create.rb typeinfo.txt typeinfo build-d

cd build-s
cp ../test.c .
gcc -std=c99 -o typeinfo.o -c typeinfo.c
ar -r libtypeinfo.a typeinfo.o
gcc -std=c99 -o test test.c -L. -ltypeinfo
cd ..

cd build-d
cp ../test.c .
gcc -std=c99 -shared -fPIC typeinfo.c -o libtypeinfo.so
gcc -std=c99 -o test test.c -L. -ltypeinfo
cd ..

clear

echo ====== Testing Static Library ======
build-s/test
echo

echo ====== Testing Dynamic Library ======
build-d/test
echo
