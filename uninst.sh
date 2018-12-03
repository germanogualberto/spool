#desinstala a aplicacao

#verificar se ja está instalado

OLD_NAME='/usr/bin/old-lp'
NAME='/usr/bin/lp'
NEW_NAME='/usr/bin/new-lp.sh'
DIR='/usr/bin/'

#renomear antigo

if [ -f $OLD_NAME ];
then
	echo "existe old-lp"
	#apaga arquivos
	rm -rf $DIR+'new-lp-doc'
	rm -rf $DIR+'new-lp-scripts'
	rm -rf $DIR+'README.md'
	rm -rf $DIR+'inst.sh'
	rm -rf $DIR+'uninst.sh'
	rm -rf $DIR+'lp'
	echo "arquivos apagados"
	#renomear antigo
	mv $OLD_NAME $NAME

else
	echo "instalação prévia do new-lp nao encontrada"
fi
