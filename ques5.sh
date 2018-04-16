echo "*** MENU ***"
echo "1. Display 'n' number lines of the files"
echo "2. to sort files in ascending or descending order"
read choice
case $choice in
1)
echo "Enter File Name"
read filename
echo "Enter the number of lines to be displayed"
read n
if [ ! -f $filename ]
then
echo "File does not Exist!!"
exit 1
fi
tail -$n $filename
;;
2)
echo "Enter File Name"
read filename
echo "In 1) Ascending Order OR 2) Descending order??"
read ch
case $ch in
1) 
echo "\nFile in ascending order is ->"
sort $filename;;
2)
echo "\nFile in descending order is ->"
sort -r $filename;;
*) echo "ERROR!!!";;
esac
;;
*)
echo "ERROR!!!"
;;
esac
