#!/usr/env/bin bash
# File: guessinggame.sh

function check_response {
	
	read response
	local num_files_in_dir="$(ls -h | wc -l)"
	while [[ $response -ne $num_files_in_dir ]]
	do
		if [[ $response -lt $num_files_in_dir ]]
		then 
			echo "Your guess was too low"
		else
			echo "Your guess was too high"
		fi
		
		
		echo "Please try again"
		read response
	
	done
	
	echo "You guessed the correct number thank you for playing"
}	

echo "Please enter the number of files in this directory"
check_response 
