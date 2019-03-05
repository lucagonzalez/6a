i=0
suma=0
respuesta=1000
while [ $respuesta -ne 0 ];do
    read -p "Por favor, inserte un número (0 para cerrar) " respuesta
    if [ $respuesta -lt 0 ]; then
	echo "Número inválido"
    elif [ $respuesta -gt 0 ];then
	suma=`expr $respuesta + $suma`
	i=$(($i+1))
    fi
done
echo "La suma de los números es $suma"
media=`expr $suma / $i`
echo "La media de los números es $media"
