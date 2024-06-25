import glob

print("Compiling C files...")

# glob via python library
c_files = glob.glob('**/*.c', recursive=True)

for c_file in c_files:
	o_file = c_file.replace('.c', '.o')
	# syntax for interpolating python values into commands
	gcc -c @(c_file) -o @(o_file)

# built-in glob syntax
gcc -o program **/*.o

print("Compilation completed.")

./program
