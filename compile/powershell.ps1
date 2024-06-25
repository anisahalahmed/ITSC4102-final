Write-Output "Compiling C files..."
Get-ChildItem -Recurse -Filter *.c | ForEach-Object {
    $output = $_.FullName.Replace(".c", ".o")
    gcc -c $_.FullName -o $output
}

# link object files
$objectFiles = Get-ChildItem -Recurse -Filter *.o
gcc -o program $objectFiles

Write-Output "Compilation completed."