#Escribir un programa “saludo” que, según la hora, escriba el saludo correspondiente al nombre de pila del usuario.
#En el archivo /etc/passwd los usuarios deben estar ingresados con nombre y apellido separados por blanco. Los 
#saludos corresponden a las siguientes horas: Buenos días, de 05:00 hasta 12:59; Buenas tardes, de 13:00 hasta 
#19:59; Buenas noches 20:00 hasta 04:59. Ejemplo de mensaje a las 9:30: Buenos días, Juan.

#!/bin/bash

hora=$(date "+%H")
pila=$(cat /etc/passwd | grep $(whoami): | cut -d : -f 5)

if [ $hora -ge 13 ] && [ $hora -lt 20 ]; then
	echo "Buenas tardes, $pila"
elif [ $hora -ge 5 ] && [ $hora -lt 13 ]; then
	echo "Buenos días, $pila"
else
	echo "Buenas noches, $Pila"
fi
