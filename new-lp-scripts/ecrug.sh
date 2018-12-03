
#DIR3='./new-lp-scripts'
DIR3='.'
COTA=$(cat $DIR3/cota.info)

#exists?
if [ $1 = '-e' ]
then	
	if [ $(grep -c `whoami` bd) -ge 1 ];
	then
		echo ok
	else
		echo nok
	fi
fi

#create
if [ $1 = '-c' ]
then
echo `whoami` $(date '+%b/%Y') 0 0 $COTA >> $DIR3/bd
fi

#read
if [ $1 = '-r' ]
then
cat $DIR3/bd
fi

#update
if [ $1 = '-u' ]
then
cat $DIR3/bd
fi

#getall
if [ $1 = '-g' ]
then
cat $DIR3/bd
fi

#echo ecrug.sh
