
DIR3='./new-lp-scripts'
#DIR3='.'
COTA=$(cat $DIR3/cota.info)
USER=$(whoami)

#exists?
if [ $1 = '-e' ];
then	
	if [ $(grep -c `whoami` $DIR3/bd) -ge 1 ];
	then
		echo ok
	else
		echo nok;
	fi
fi

#create
if [ $1 = '-c' ]
then
echo `whoami` $(date '+%b/%Y') 0 0 $COTA >> $DIR3/bd
fi

#date --date="$(date +%Y-%m-15) +1 month" +'%b/%Y'
#create no proximo mes
if [ $1 = '-ce' ]
then
nextMonth=`date --date="$(date +%Y-%m-15) +1 month" +'%b/%Y'`
novoValor=`expr $COTA + $2`
echo `whoami` $nextMonth 0 0 $novoValor >> $DIR3/bd
fi

#read
if [ $1 = '-r' ]
then
	grep $USER $DIR3/bd | cut -d' ' -f2,5 | grep `date "+%b"` | cut -d' ' -f2
fi


remove() {
	busca=$(whoami)' '$(date '+%b/%Y')
	grep -v "$busca" $DIR3/bd > $DIR3/bd-tmp
}

#update
if [ $1 = '-u' ]
then
#remove
remove
#create
echo `whoami` $(date '+%b/%Y') 0 0 $2 >> $DIR3/bd-tmp
rm -rf $DIR3/bd
mv $DIR3/bd-tmp $DIR3/bd
#cat $DIR3/bd
fi

#getall
if [ $1 = '-g' ]
then
cat $DIR3/bd
fi

#echo ecrug.sh
