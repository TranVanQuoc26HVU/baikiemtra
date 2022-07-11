echo "Nhap vao ten mot folder: "
read DIR
if [ -d "$DIR" ]; then
	for entry in `ls $DIR`; do
	
	    if [ ! -s $DIR/$entry ]
		then
			echo $entry
		fi
	done
else
  echo "Error: ${DIR} not found. Can not continue."
  exit 1
fi
