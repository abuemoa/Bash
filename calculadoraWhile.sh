# Realizar una calculadora que ejecute las cuatro operaciones básicas. Este programa ha de estar repitiéndose mientras el usuario no escriba “salir”.

bucle=0
while [ $bucle -eq 0 ]; do
echo -e "Elije una opción:\nS) Suma.\nR) Resta.\nD) División.\nM) Multiplicación.\n\nX) Salir\n"
read -p "Opción: " opcion
if [ $opcion = X ]; then
	echo "Saliendo.."
	break
fi
read -p "Operando 1: " primero
read -p "Operando 2: " segundo

if [[ $opcion = S ]]; then
	resultado=$((primero + segundo))
elif [[ $opcion = R ]]; then
	resultado=$((primero - segundo))
elif [[ $opcion = M ]]; then
	resultado=$((primero * segundo))
elif [[ $opcion = D ]]; then
	resultado=$((primero / segundo))
else 
	echo "Operador equivocado, no se puede resolver el problema. Vuelva a intentarlo"
fi

echo $resultado
done
