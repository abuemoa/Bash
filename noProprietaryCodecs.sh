#!/bin/bash

usuarioFold=$(ls -1 /home)

echo "he aquí un listado de los usuarios a los que puede destrozar la vida 

$usuarioFold"
echo "
Por favor, introduzca el nombre del usuario al que quiere destrozar la vida"
read $1 usuario


counter=$(find /home/$usuario \( -name "*mp3" -o -name "*avi" \) | wc -l 2>/dev/null)

size=$(find /home/$usuario \( -name "*mp3" -o -name "*avi" \) -exec du -ch {} + | grep total$)

find /home/$usuario \( -name "*mp3" -o -name "*avi" \) -exec rm -rf {} \; 2>/dev/null

echo "Se han eliminado $counter ficheros"
echo "Y se han eliminado un total de $size bytes"

if [[ $counter -ne 0 ]] 
then
        echo "gracias por destrozar la vida al usuario $usuario"       
else 
        echo "Este usuario no tiene nada. Nada que eliminar."
fi
