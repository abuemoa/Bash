 # Escribir un programa “seaejec” que reciba un nombre de archivo, verifique que existe y que es un archivo común, lo convierta en ejecutable para 
 # el dueño y el grupo y muestre el modo final.

#!/bin/bash
if [ -f $1 ]; then
	echo "El archivo $1 existe"
	chmod u+x,g+x $1
	ls -l $1
else
	echo "$1 no es un archivo"
fi 
