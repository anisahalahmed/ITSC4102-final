# A simple backup script using PowerShell

$source = ".\documents"
$dest = ".\backup"
$date = Get-Date -Format "yyyy-MM-dd"

# Create backup directory if it doesn't exist
if (-not (Test-Path "$dest\$date")) {
    New-Item -ItemType Directory -Path "$dest\$date"
}

# Copy files
Copy-Item -Path $source -Destination "$dest\$date" -Recurse

Write-Output "Backup completed on $date"
