#!/bin/bash
read -p "Mari, ponme el usuario que quieras: " usuario
hora=$(w -h | grep $usuario | awk '{print $4}' | tail -1)
nombre=$(w -h | grep $usuario | awk '{print $1}')
if [ -z "$nombre" ]; then
        echo "el usuario no se encuentra conectado"     
else
        echo "El usuario $usuario lleva conectado desde la/s $hora. Digale que apague la Nintendo"
fi
