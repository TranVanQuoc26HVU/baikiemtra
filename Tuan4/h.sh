echo "Nhap vao ten mot folder: "
read DIR
output=er2.txt  

if [ -d "$DIR" ]; then
	so=`find $DIR -type d -print| wc -l`
	result="so luong folder la $(($so - 1))"
	echo "$result"
	echo $result >> $output  
else
  result2="Error: ${DIR} not found. Can not continue."
  echo "$result2"
  echo $result2>>$output
  exit 1
fi
