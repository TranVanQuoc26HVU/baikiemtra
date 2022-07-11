i=1;
for argument in "$@"
	do 
	    i=$((i + 1))
done
if [ $i -gt 9 ]
	then    i=1;
		for argument in "$@" 
		do
		    echo "argument - $i: $argument";
		    i=$((i + 1));
		done	
	else
		echo "Argument must be greater than 9"
fi


