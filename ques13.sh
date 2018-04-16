echo "Enter file name"
read filename
awk ' !seen[$0]++ ' $filename
