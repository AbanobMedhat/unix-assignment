#!/usr/bin/env bash
# Files:guessinggame.sh

function startShell {
	echo "how many files are in the current directory ?" 
}

function getFilesNumber {
	local filesNo=$(ls -alh | wc -l)
	return filesNo
}


function guessinggame {
	startShell
	# inp is varibale for the input
	read inp
	local actualNo=getFilesNumber
	while [[ inp -ne actualNo ]]; 
	do
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