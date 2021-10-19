#!/bin/bash

usuarioFold=$(ls /home)

echo "he aquí un listado de los usuarios a los que puede destrozar la vida\n\n $usuarioFold\n"
echo "Por favor, introduzca el nombre del usuario al que quiere destrozar la vida"
read $1 usuario
while [[ $usuarioFold -ne $usuario ]]; do
        read $1 usuario
        echo "el usuario $usuario no existe, pruebe un usuario de esta lista para destrozar:\n"
        echo $usuarioFold
done

find /home/$usuario \( -name "*mp3" -o -name "*avi" \) -exec rm -rf {} \;


echo "gracias por destrozar la vida al usuario $usuario"
