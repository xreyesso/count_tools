if [[ $# -eq 0 ]] # $# gives the count of arguments passed to the script
then
	echo No files were passed as argument
	exit 1 #exit with error code 1
fi

for file in $@ # $@ expands to all command-line arguments
do
	NLINES=$(grep -c "" $file)
	if [[ $NLINES -eq 1 ]]
	then 
		echo The file has 1 line
	elif [[ $NLINES -eq 0 ]]
	then
		echo The file has 0 lines
	else
		echo The file has $NLINES lines
	fi
done
