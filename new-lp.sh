#abstracao do novo lp

echo "new-lp with spool functionalities!"

SCRIPTS='./new-lp-scripts/'

if [ "$1" = "-rel" ];
then
	$SCRIPTS'rel.sh'
else

	
	if [ $($SCRIPTS'gerente-ecru.sh') = 'ok' ]
	then
		echo "executar lp"
		#old-lp repassando os parametros enviados
	else
		echo "usuario sem cota suficiente para imprimir"
	fi
fi
