#!/usr/bin/zsh

input=$1

awk -F';' '{
	if ($3 == "A"){
		$4=$4+40;
		$5=$5+40;
	}
	if ($3 == "I"){
		$4=$4+60;
	}
	if ($3 == "E"){
		$4=$4+10;
	}
	if ($3 == "F"){
		$4=$4+10;
	}
	if ($3 == "G"){
		$4=$4+10;
	}
	if ($3 == "H"){
		$4=$4+10;
	}

	print $0
}' OFS=';' $input > temp.csv && mv temp.csv $input
