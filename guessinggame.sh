#!/usr/bin/env bash

echo "[Welcome to Guessing game-The Unix Workbench-Week 4]"

function guess_funct {
		echo "Please guess numer of files in the directory:"
			read guess
			    files=$(ls -1 | wc -l)
		    }

guess_funct
while [[ $guess -ne $files ]]
do
  	if [[ $guess -lt $files ]] 
	then
		echo "Too low Guess, please try again."
	else
		echo "Too high Guess, please try again."
	fi
	guess_funct
done
echo "Well done! You guessed correctly, here are the files:"
echo "---" && ls -1
