#!/usr/bin/env bash
# Files:guessinggame.sh

function startShell {
	echo "how many files are in the current directory ?" 
}

function getFilesNumber {
	local filesNo=$(ls -l | wc -l)
	let filesNo=$(echo "$filesNo - 1" | bc -l)
	echo $filesNo
}


function guessinggame {
	startShell
	# inp is varibale for the input
	inp=-100
	local actualNo=$(getFilesNumber)
	echo $actualNo
	while [[ inp -ne actualNo ]]; 
	do
		read inp
		if [[ inp -gt actualNO ]]; 
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

guessinggame