while true;do
    read -p "Por favor, inserte el día numerico: " respuesta
    if [ $respuesta -lt 0 -o $respuesta -gt 30 ]; then
	echo "Entrada invalido"
    else
	arrayDias=(ERROR LUNES MARTES MIERCOLES JUEVES VIERNES SABADO DOMINGO)
	if [ $respuesta -le 7 ];then
	    echo "${arrayDias[$respuesta]}"
	    break;
	elif [ $respuesta -gt 7 -a $respuesta -le 14 ];then
	    posicion=$(expr $respuesta - 7)
	    echo "${arrayDias[$posicion]}"
	    break;
	elif [ $respuesta -gt 14 -a $respuesta -le 21 ]; then
	    posicion=$(expr $respuesta - 14)
	    echo "${arrayDias[$posicion]}"
	    break;
	elif [ $respuesta -gt 21 -a $respuesta -le 28 ]; then
	    posicion=$(expr $respuesta - 21)
	    echo "${arrayDias[$posicion]}"
	    break;
	else posicion=$(expr $respuesta - 28)
	     echo "${arrayDias[$posicion]}"
	     break;
	fi
    fi
done
