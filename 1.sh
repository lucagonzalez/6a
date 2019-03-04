x=$1
y=$2
if [ $x -gt $y ];then
    echo "${x} es mayor que ${y}"
elif [ $y -gt $x ];then
    echo "${y} es mayor que ${x}"
else
    echo "Los dos valores son iguales"
fi
