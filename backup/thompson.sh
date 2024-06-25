: Thompson shell does not support variables, control flow constructs,
: or command substitution. An equivalent script would be fragmented
: and rely on manual input and external commands.

echo "Backup script started"
: Manually specify source and destination directories
cat <<EOF > backup_script
cd ./documents

: Because there is no command substitution, you cannot create directories
: based on the current date, or any paramter for that matter
: thus using a tar directory then having it moved by another script is
: required
tar -cf /home/user/backup/backup.tar *
EOF

sh backup_script
echo "Backup completed"
