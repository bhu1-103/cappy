#!/usr/bin/zsh

input=$1

awk -F';' '{
	if ($3 == "D"){
		$4=$4-30;
		$5=$5+40
	}
	if ($3 == "C"){
		$4=$4-30;
		$5=$5+40
	}
	if ($3 == "A"){
		$4=$4+10;
	}
	if ($3 == "B"){
		$4=$4+10;
	}

	print $0
}' OFS=';' $input > temp.csv && mv temp.csv $input
