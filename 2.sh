echo "Por favor, inserte un número más grande que 0"
select option in `seq 0 10`;do
    if [ expr ${option} % 2 -eq 0 ];then
	echo "El valor es par"
    else
	echo "El valor es impar"
    fi
done
