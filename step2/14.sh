#!/usr/bin/zsh

input=$1

awk -F';' '{
	if ($3 == "M"){
		$4=$4+80;
		$5=$5-20
	}
	if ($3 == "N"){
		$4=$4+60;
		$5=$5-60
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
