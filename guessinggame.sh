#!/usr/bin/env bash
# File: guessinggame.sh

function startShell {
	echo "how many files are in the current directory ?" 
}

# get files number
function getFilesNumber {
	local filesNo=$(ls -a| wc -l)
	let filesNo=$(echo "$filesNo - 2" | bc )
	echo $filesNo
}

# main function for guessing game
function guessinggame {
	# begin the game
	startShell
	# inp is varibale for the input 
	# assing inp with negative value to make the loop work
	local inp=-100
	local actualNo=$(getFilesNumber)
	while [[ inp -ne actualNo ]]; 
	do
		read inp
		# check if the inp is high or low from the desired value
		if [[ inp -gt actualNo ]]; 
		then
			echo "the input is  too high please try again"
			#statements
		else
			echo "the input is too low please try again"
		fi
		#statements
	done

	echo "congratulations you are correct"
}

# call the function
guessinggame