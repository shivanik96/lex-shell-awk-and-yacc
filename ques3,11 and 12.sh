case $# in
0) set `date` m=$2 y=$6
cal $m $y;;
1) m=$1 set `date` y=$6
cal $m $y;;
2) m=$1
echo $m
	case $m in
	JAN*|jan*) mon=1;;
	FEB*|frb*) mon=2;;
	MAR*|mar*) mon=3;;
	APR*|apr*) mon=4;;
	MAY*|may*) mon=5;;
	JUN*|jun*) mon=6;;
	JUL*|jul*) mon=7;;
	AUG*|aug*) mon=8;;
	SEP*|sep*) mon=9;;
	OCT*|oct*) mon=10;;
	NOV*|nov*) mon=11;;
	DEC*|dec*) mon=12;;
	1-12) mon=m;;
	esac
y=$2
echo $mon
cal $mon $y;;
3) m1=$1
	case $m1 in
	JAN*|jan*) mon1=1;;
	FEB*|frb*) mon1=2;;
	MAR*|mar*) mon1=3;;
	APR*|apr*) mon1=4;;
	MAY*|may*) mon1=5;;
	JUN*|jun*) mon1=6;;
	JUL*|jul*) mon1=7;;
	AUG*|aug*) mon1=8;;
	SEP*|sep*) mon1=9;;
	OCT*|oct*) mon1=10;;
	NOV*|nov*) mon1=11;;
	DEC*|dec*) mon1=12;;
	1-12) mon1=m1;;
	esac
 m2=$3
	case $m2 in
	JAN*|jan*) mon2=1;;
	FEB*|frb*) mon2=2;;
	MAR*|mar*) mon2=3;;
	APR*|apr*) mon2=4;;
	MAY*|may*) mon2=5;;
	JUN*|jun*) mon2=6;;
	JUL*|jul*) mon2=7;;
	AUG*|aug*) mon2=8;;
	SEP*|sep*) mon2=9;;
	OCT*|oct*) mon2=10;;
	NOV*|nov*) mon2=11;;
	DEC*|dec*) mon2=12;;
	1-12) mon2=m2;;
	esac
set `date` y=$6
echo $y
for i in `seq $mon1 $mon2`
do
cal $i $y
done;;
4) m1=$1
	case $m1 in
	JAN*|jan*) mon1=1;;
	FEB*|frb*) mon1=2;;
	MAR*|mar*) mon1=3;;
	APR*|apr*) mon1=4;;
	MAY*|may*) mon1=5;;
	JUN*|jun*) mon1=6;;
	JUL*|jul*) mon1=7;;
	AUG*|aug*) mon1=8;;
	SEP*|sep*) mon1=9;;
	OCT*|oct*) mon1=10;;
	NOV*|nov*) mon1=11;;
	DEC*|dec*) mon1=12;;
	1-12) mon1=m1;;
	esac
 m2=$3
	case $m2 in
	JAN*|jan*) mon2=1;;
	FEB*|frb*) mon2=2;;
	MAR*|mar*) mon2=3;;
	APR*|apr*) mon2=4;;
	MAY*|may*) mon2=5;;
	JUN*|jun*) mon2=6;;
	JUL*|jul*) mon2=7;;
	AUG*|aug*) mon2=8;;
	SEP*|sep*) mon2=9;;
	OCT*|oct*) mon2=10;;
	NOV*|nov*) mon2=11;;
	DEC*|dec*) mon2=12;;
	1-12) mon2=m2;;
	esac
echo $mon1
echo $mon2
for i in `seq $mon1 $mon2`
do
cal $i $4
done;;
esac
