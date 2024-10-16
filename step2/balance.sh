#!/usr/bin/zsh

last_AP=$(awk -F';' 'END{print $3}' 000.csv)

if [[ "$last_AP" =~ [A-Z] ]]; then
    num=$(( $(printf "%d" "'$last_AP") - 64 ))
	echo $num
else
    echo "$last_AP"
fi
