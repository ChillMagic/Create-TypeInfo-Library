@echo off

mkdir %1
python create.py typeinfo.txt typeinfo %1
