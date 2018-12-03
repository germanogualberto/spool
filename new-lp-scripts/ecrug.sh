
#DIR3='./new-lp-scripts'
DIR3='.'

#exists?
if [ $1 = '-e' ]
then
cat $DIR3/bd
fi

#create
if [ $1 = '-c' ]
then
cat $DIR3/bd
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

echo ecrug.sh
