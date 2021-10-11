# Usando el archivo /etc/passwd escribir el programa “usuarios” que lista los nombres de login, el directorio propio
# del usuario y el intérprete invocado por defecto de todos los usuarios, ordenados alfabéticamente por nombre de login.

#!/bin/bash

user=$(awk -F: '$6 ~ /\/home/ {print $1}' /etc/passwd)
home=$(sort /etc/passwd | awk -F: '$6 ~ /\/home/ {print $6}')
inter=$(sort /etc/passwd | awk -F: '$6 ~ /\/home/ {print $7}')


echo -e "\nNombre de los usuarios:\n$user\n"
echo -e "Nombre de los directorios:\n$home\n"
echo -e "Nombre de los nombre de sus intérpretes:\n$inter\n"
