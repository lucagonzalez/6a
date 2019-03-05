while true;do
    read -p "Por favor, inserte un número mayor que 0 " respuesta
    if [ $respuesta -lt 0 ]; then
	echo "Número inválido"
    else
	i=0
	while [ $i -le $respuesta ];do
	    echo $i
	    i=$(($i+1))
	done
	break;
    fi
done
