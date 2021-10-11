# Recibir varios nombres de archivo como parámetros, y para cada uno validar si el nombre corresponde a un archivo común existente,
# y si es así mostrarlo en pantalla paginando.

#!/bin/bash

archivos=($(echo $*))
echo "Los siguientes archivos están presentes: "
for i in "${archivos[@]}"
do
    if [ -f $i ]; then
	echo "el archivo "$i" existe"  
    fi
done | less
 
