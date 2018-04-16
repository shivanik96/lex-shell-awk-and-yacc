echo 'Welcome Users!!!!!!'
t=$(date +%H%M)
if [ "$t" -ge 0000 -a "$t" -le 1159 ];
then
echo 'GOOD MORNING'
fi
if [ "$t" -ge 1200 -a "$t" -le 1559 ];
then
echo 'GOOD AFTERNOON'
fi
if [ "$t" -ge 1600 -a "$t" - le 1959 ];
then
echo 'GOOD EVENING'
fi
if [ "$t" -ge 2000 -a "$t" - le 2359 ];
then 
echo 'GOOD NIGHT';
fi


