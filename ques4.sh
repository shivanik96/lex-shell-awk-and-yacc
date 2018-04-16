echo "*** MENU ***"
echo "1) Display the file"
echo "2) Display the file Permissions"
echo "3) to find the pattern in line"
echo "4) To replace letters 'e' by 'a'"
read choice
case $choice in
1)
echo "Enter file name"
read filename
echo "The file is\n"
cat $filename
;;
2)
echo "Enter file name"
read filename
echo "The file's permission are"
ls -l $filename
;;
3)
echo "-> a) ignoring the case"
echo "-> b) case sensetive"
echo "select one..."
read ch
case $ch in
a|A) 
echo "Enter the filename"
read filename
echo "Enter a word"
read word
echo "The lines of " $filename " which has " $word " (case insensitive) are ->"
grep -y $word $filename
;;
b|B) 
echo "Enter the filename"
read filename
echo "Enter a word"
read word
echo "The lines of " $filename " which has " $word " (case sensitive) are ->"
grep $word $filename
;;
*)
echo "Wrong Input!!"
;;
esac
;;
4)
echo "Enter filename"
read filename
tr e a < $filename > newfile
echo "File after replacement"
cat newfile
;;
esac
