echo " enter the name of first file"
read file1

echo " enter the name of second file"
read file2
 
if(cmp $file1 $file2)
 then 
    echo "same file"
    rm $file2
else
    echo " not same"
fi   
