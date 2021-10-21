#!/bin/bash

echo "O le borramos todos los archivos multimedia o todos los tocho, he aquí el listado de usuarios. 

$usuarioFold"
echo "
Por favor, introduzca el nombre del usuario: "
read $1 usuario

counter=$(find /home/$usuario \( -name "*mp3" -o -name "*avi" \) | wc -l)
counter50=$(find /home/$usuario -size +50M -type f | wc -l 2>/dev/null)

echo $counter
if [ $counter -le 25 ] && [ $counter -gt 0 ]; then
        find /home/$usuario \( -name "*mp3" -o -name "*avi" \) -exec rm -rf {} \;
        echo "Se han eliminado $counter archivos mp3 y avi"
elif [ $counter -gt 25 ] || [ $counter -eq 0 ] && [ $counter50 -gt 0 ]; then
        counter=$(find /home/$usuario -size +50M -type f | wc -l 2>/dev/null)
        find /home/$usuario -size +50M -type f -exec rm {} \;
        echo "Como habían 0 o más de 25 archivos de mp3 y avi, se han eliminado $counter archivos de más de 50 MB"
else
        echo "No se han encontrado archivos de más de 50MB ni hay menos de 25 archivos de audio y vídeo privativos"
fi
