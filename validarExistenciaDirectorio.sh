# Recibir un nombre de directorio, validar existencia y condición de directorio y mostrar nombres de todos los directorios y subdirectorios bajo él.
#!/bin/bash

if [ -d $1 ]; then
	echo "El directorio $1 existe"
	ls -R $1
	echo -e "\nAquí se ha mostrado el árbol de la estructura de directorios de $1\nSaliendo del programa..."
else
	echo "Esto no es un directorio"
fi	
