@echo off

echo Compiling C files...
for /r %%f in (*.c) do (
    gcc -c %%f -o %%~dpnf.o
)

REM link object files
gcc -o program *.o util\*.o

echo Compilation completed.