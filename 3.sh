while true;do
    read -p "Por favor, inserte tu nota: " respuesta
    if [ $respuesta -lt 0 -o $respuesta -gt 10 ]; then
	echo "Nota inválida"
    else
	if [ $respuesta -lt 5 ];then
	    echo "REPROBADO!"
	    break;
	elif [ $respuesta -eq 5 ];then
	    echo "APROBADO!"
	    break;
	elif [ $respuesta -eq 6 ];then
	    echo "BIEN!"
	    break;
	elif [ $respuesta -eq 7 -o $respuesta -eq 8 ]; then
	    echo "NOTABLE!"
	    break;
	elif [ $respuesta -eq 9 -o $respuesta -eq 10 ];then
	    echo "SOBRESALIENTE!"
	    break;
	fi
    fi
done
