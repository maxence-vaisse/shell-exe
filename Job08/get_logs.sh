connection_number=$(grep "LAPTOP-MaxenceMk7" /var/log/auth.log | wc -l)

date=$(date +%d-%m-%Y-%H:%M)
echo "$connection_number : $date" > "Backup/number_connection-$date.txt"
tar -czf "Backup/number_connection-$date.tar" "Backup/number_connection-$date.txt"
