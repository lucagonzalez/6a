echo "Por favor inserte un número mas grande que 0"
select respuesta in `seq 1 10`; do
    comprobacion=`expr $respuesta % 2`
    if [ ${comprobacion} -eq 0 ];then
	echo "Este número es par"
    else echo "Este número es ímpar"
    fi
done

