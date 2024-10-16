#!/usr/bin/zsh

input=$1

awk -F';' '{
	if ($3 == "D"){
		$4=$4-20;
		$5=$5+20;
	}
	print $0
}' OFS=';' $input > temp.csv && mv temp.csv $input
