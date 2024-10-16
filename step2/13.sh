#!/usr/bin/zsh

input=$1

awk -F';' '{
	if ($3 == "M"){
		$4=$4+80;
		$5=$5-20
	}
	if ($3 == "E"){
		$4=$4+80;
		$5=$5-20
	}

	print $0
}' OFS=';' $input > temp.csv && mv temp.csv $input
