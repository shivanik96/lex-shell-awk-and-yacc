awk 'BEGIN {
	printf "Enter the File Name : "
	getline filename
	if ( -s $filename )
	{
		print "File Exists!"
	}
	else
	{
		print "File does NOT exists!"
	}
	printf "\n"
}'
