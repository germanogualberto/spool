#abstracao do novo lp

echo "new-lp with spool functionalities!"

SCRIPTS='./new-lp-scripts/'

if [ "$1" = "-rel" ];
then
	$SCRIPTS'rel.sh'
else
	filename=${@: -1}
	sizefile=`wc -c $filename | cut -d' ' -f1`
	#echo $sizefile

	if [ $($SCRIPTS'gerente-ecru.sh' $sizefile) = 'ok' ]
	then
		echo "executar lp"
		#old-lp repassando os parametros enviados
		#./old-lp $@
	else
		echo "usuario sem cota suficiente para imprimir"
	fi
fi
