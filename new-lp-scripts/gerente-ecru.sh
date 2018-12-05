#faz verificacoes antes de chamar o lp-old propriamente dito

USER1=$(whoami)
ECRUG='ecrug.sh'
DIR4='./new-lp-scripts'

#$DIR4/$ECRUG -g
#./$ECRUG -g
#CHAMA=$DIR4/$ECRUG
CHAMA=./$ECRUG

$CHAMA -g

#verificar se usuario existe
if [ $($CHAMA -e) = 'ok' ];
then
	echo usuario existe

#se nao existir, cria
else
	$CHAMA -c
	echo Usuario criado
fi

#se existir, testa se pode imprimir
if [ $($CHAMA -r) -ge 1 ];
then
	#pode imprimir
	#atualiza bd
	echo pode imprimir
	echo ok
else
	#nao pode imprimir
	echo nao pode imprimir
	echo nok
fi




