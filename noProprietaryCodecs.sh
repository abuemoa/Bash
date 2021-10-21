#!/bin/bash

usuarioFold=$(ls /home)



echo "he aquí un listado de los usuarios a los que puede destrozar la vida 

$usuarioFold"
echo "
Por favor, introduzca el nombre del usuario al que quiere destrozar la vida"
read $1 usuario
counter=$(ls -1 *avi *mp3 2>/dev/null | wc -l)
size=$(ls -1 /media/alex/*mp3 2>/dev/null | xargs du -cb | awk 'END {print $1}')
while [[ $usuarioFold -ne $usuario ]]; do
        read $1 usuario
        echo "el usuario $usuario no existe, pruebe un usuario de esta lista para destrozar:\n"
        echo $usuarioFold
        let counter=counter+1
done

find /home/$usuario \( -name "*mp3" -o -name "*avi" \) -exec rm -rf {} \; 2>/dev/null
echo "Se han eliminado $counter ficheros"
echo "Y se han eliminado un total de $size bytes"

if [[ $counter -ne 0 ]]
then
        echo "gracias por destrozar la vida al usuario $usuario"       
else
        echo "Pues ya si eso a la próxima"
fi
