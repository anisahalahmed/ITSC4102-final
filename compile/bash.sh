#!/bin/bash

echo "Compiling C files..."
find . -name "*.c" | while read file; do
	gcc -c "$file" -o "${file%.c}.o"
done

# link object files
find . -name "*.o" -exec gcc -o program {} +

echo "Compilation completed."

./program
