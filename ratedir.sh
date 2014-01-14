level=$1
for file in $(ls)
do
    score=$(exiftool $file | grep Rating | sed 's/Rating//' | sed 's/ //g' | sed 's/://')
    if (("$score" != "0" && "$score" >= "$level"))
    then
	concatname=$score'_rated'
	mkdir $concatname 2> /dev/null
	mv $file $concatname'/'$file
	printf "\n"
	echo "found level $score file: $file"
    fi

    if (("$score" == "0"))
    then
	mkdir discarded 2> /dev/null
	mv $file 'discarded/'$file	
    fi
    printf '.'
done
printf "\n"
echo "Deleting raw files under level $level"
rm *.CR2
rm discarded/*.CR2
