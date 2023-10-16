backup="Backup"
mkdir "$backup"
date=$(date +'%d-%m-%Y-%H:%M')
number_connection=$(last)
name="number_connection-$date"
echo "$number_connection" > "$backup/$name"
tar -czf "$backup/$name.tar" "$backup/$name"
