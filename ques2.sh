echo “Enter a filename” 
  read filename 
  tr -s " " < $filename 
  sed -e 's/^[[:blank:]]*$//' $filename > newfile 
  cat $newfile   