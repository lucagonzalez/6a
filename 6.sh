while true;do
    read -p "Por favor, inserte el consumo " respuesta
    if [ $respuesta -lt 0 ]; then
	echo "Consumo invalido"
    else
	if [ $respuesta -le 50 ];then
	    echo "Coste total = 20€"
	    break;
	elif [ $respuesta -gt 50 -a $respuesta -le 200 ];then
	    echo "$respuesta"
	    parentheses=`expr $respuesta - 50`
	    consumo=$(echo "scale=2; $parentheses * 0.2" | bc -l)
	    consumoTotal=$(echo "scale=2; $consumo + 20" | bc -l)
	    echo "Coste total = ${consumoTotal}€"
	    break;
	elif [ $respuesta -gt 200 ];then
	    parentheses=`expr $respuesta - 200`
	    consumo=$(echo "scale=2; $parentheses * 0.10" | bc -l)
	    consumoTotal=$(echo "scale=2; $consumo + 50" | bc -l)
	    echo "Coste total = ${consumoTotal}€"
	    break;
	fi
    fi
done
