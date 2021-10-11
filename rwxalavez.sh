# Recibir un nombre de archivo como parámetro e indicar 
# si el archivo es legible, modificable y ejecutable 
# por el usuario.

#!/bin/bash

if [ -r $1 ] && [ -w $1 ] && [ -x $1 ] ; then
	echo "El usuario $(whoami) tiene permisos de lectura, escritura y ejecución sobre el archivo $1"
else
	echo "El usuario $(whoami) no tiene alguno de los permisos sobre el archivo $1."
fi
