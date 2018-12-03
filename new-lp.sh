#abstracao do novo lp

echo "new-lp with spool functionalities!"

SCRIPTS='./new-lp-scripts/'

if [ "$1" = "-rel" ];
then
	$SCRIPTS'rel.sh'
else
	$SCRIPTS'gerente-ecru.sh'
	#lp
fi
