#!/user/bin/env bash

function finder {
	path=${1:-"$PWD"}
	echo $(find $1 . -type f | wc -l)
}

num_files=$(finder $1)
indicator=1

while [[ $indicator = 1 ]]
do
	echo "What's your guess about the number of files, excluding directories, in the directory you passed as argument (working directory is default) and its subdirectories, including hidden files?"
	read guess
		
	if [[ $guess = $num_files ]]
	then
		echo 'That is correct, congratulations!'
		indicator=0
	elif [[ $guess -lt $num_files ]]
	then
		echo "Incorrect! There are indeed more than $guess files."
	else
		echo "Incorrect! There are less than $guess files."
	fi
done
