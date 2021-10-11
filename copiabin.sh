# Escribir un programa “copiabin.sh” que mueva todos los programas del directorio actual (archivos ejecutables) hacia el subdirectorio “bin” 
# del directorio propio del usuario, muestre los nombres de los que mueve e indique cuántos ha movido, o que no ha movido ninguno. Si el 
# directorio “bin” no existe, deberá crearlo.

#!/bin/bash

if [ -e $HOME/bin ]; then
	echo "el directorio $HOME/bin ya existe"
else 
	mkdir -v $HOME/bin
fi
find=$(find ./ -executable | cut -d / -f 2 )
wc=$(find ./ -executable | cut -d / -f 2 | wc -w)
mv -v $find $HOME/bin/

if [ $wc -ge 1 ]; then
	echo "Se han movido $wc archivos"
else
	echo "No se ha movido na"
fi	
 
