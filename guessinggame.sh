#!/user/bin/env bash

function finder {
	echo $(find . -type f | wc -l)
}

num_files=$(finder)
indicator=1

while [[ $indicator = 1 ]]
do
	echo "Whats you guess about the number of files, excluding directories, in the current wd and its subdirectories?"
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
