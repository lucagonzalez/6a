while true; do
    read -p "Por favor, inserte un valor mayor de 0: " respuesta
    if [ $respuesta -lt 0 ]; then
	echo "Numero invalido"
    else
	comprobacion=`expr $respuesta % 2`
	if [ ${comprobacion} -eq 0 ];then
	    echo "Este número es par"
	    break;
	else
	    echo "Este número es ímpar"
	    break;
	fi
    fi
done


