#instala aplicacao
#verificar se ja está instalado

#funcao que copia arquivos de . para /usr/bin
#copyFiles(){
#	echo "arquivos copiados"
#}

OLD_NAME='/usr/bin/old-lp'
NAME='/usr/bin/lp'
NEW_NAME='/usr/bin/new-lp.sh'
DIR='/usr/bin/'

#salvar valor cota se tiver

#echo $# " argumentos passados"
if [ $# -gt 0 ];
then
	#echo "nova cota: " $1
	#cat cota.info
	echo $1 > cota.info
	#cat cota.info
fi

#renomear antigo

if [ ! -f $OLD_NAME ];
then
	echo "nao existe old-lp"
	#copia arquivos
#	copyFiles
	cp -R . $DIR
	#renomear antigo
	mv $NAME $OLD_NAME
	#renomear novo
	mv $NEW_NAME $NAME

else
	echo "instalação prévia do new-lp encontrada"
fi
