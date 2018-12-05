#faz verificacoes antes de chamar o lp-old propriamente dito

USER1=$(whoami)
ECRUG='ecrug.sh'
DIR4='./new-lp-scripts'

#$DIR4/$ECRUG -g
#./$ECRUG -g

CHAMA=$DIR4/$ECRUG
#CHAMA=./$ECRUG

#$CHAMA -g

#verificar se usuario existe
if [ $($CHAMA -e) = 'ok' ];
then
#	echo usuario existe
	echo ''

#se nao existir, cria
else
	$CHAMA -c
#	echo Usuario criado
fi

cotaAtual=$($CHAMA -r)
tamanhoArquivo=$1
#echo $cotaAtual 
#$CHAMA -r
#se existir, testa se pode imprimir
if [ $cotaAtual -ge 1 ];
then
	#pode imprimir
#	echo pode imprimir
#	echo $cotaAtual
	decremento=`expr $cotaAtual - $tamanhoArquivo`;
#	echo $decremento	
	#atualiza bd

	if [ $decremento -lt 0 ];
	then
		#echo decrementa proximo mes
		$CHAMA -ce $decremento
		$CHAMA -u 0;
	else
		$CHAMA -u $decremento
	fi
	echo ok;
else
	#nao pode imprimir
	#echo nao pode imprimir
	echo nok;
fi




