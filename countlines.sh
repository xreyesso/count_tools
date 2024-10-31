NLINES=$(grep -c "" $1) #count number of lines in file that the user will input
if [[ $NLINES -eq 1 ]]
then 
	echo The file has 1 line
elif [[ $NLINES -eq 0 ]]
then
	echo The file has 0 lines
else
	echo The file has $NLINES lines
fi
