#!/usr/bin/zsh

input=$1

awk -F';' '{
	if ($3 == "D"){
		$4=$4-20;
		$5=$5+40
	}
	if ($3 == "E"){
		$5=$5+20
	}
	if ($3 == "C"){
		$4=$4-20;
		$5=$5+20
	}
	if ($3 == "B"){
		$4=$4+20;
	}

	print $0
}' OFS=';' $input > temp.csv && mv temp.csv $input
