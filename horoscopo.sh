#!/bin/bash

year=($(cut -d : -f 2 $1))
arrayNombres=($(cut -d : -f 1 $1))
let wc=$(wc -l $1 | cut -d " " -f 1)
#echo $wc
while [ $wc -ge 0 ]
do
    let resto=year[$wc]%12
case $resto in
    0) hor="Mono" ;;
    1) hor="Gallo" ;;
    2) hor="Perro" ;;
    3) hor="Cerdo" ;;
    4) hor="Rata" ;;
    5) hor="Buey" ;;
    6) hor="Tigre" ;;
    7) hor="Conejo" ;;
    8) hor="Dragón" ;;
    9) hor="Serpiente" ;;
    10) hor="Caballo" ;;
    11) hor="Cabra" ;;
    *) echo "No pertenece a nadie"
esac
    echo "${arrayNombres[$wc]}:${year[$wc]}:$hor"
    let wc=wc-1
done > archivoSalida
