if [ $# -eq 0 ]
then
	echo "$0 num1, num2, numN"
	exit 1
fi
x=""
echo -n "NUMBERS ARE : "
for n in $@
do
	echo -n $n
	echo -n " "
	x="$n $x"
done
echo " "
echo -n "REVERSE ORDER : "
echo $x

