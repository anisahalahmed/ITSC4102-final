: Thompson shell has no control flow constructs so the individual
: files have to be declared manually, because there is no way to
: crawl the directories

echo "Compiling C files..."

gcc -c code/util/util.c
gcc -c code/main.c
gcc -o program *.o

./program

echo "Compilation completed."

