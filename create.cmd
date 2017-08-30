@echo off

mkdir %1
ruby create.rb typeinfo.txt typeinfo %1
