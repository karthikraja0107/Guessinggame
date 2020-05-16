#usr/bin/env bash

all: README.md

README.md : guessinggame.sh
	touch README.md
	echo "# Guessing Game" > README.md
	echo "1. Current Date/Time " >> README.md
	echo $$(date)  >> README.md
	echo "2. Total number of lines present in the program " >> README.md
	echo "$(shell cat guessinggame.sh | wc -l)"   >> README.md
clean:
	rm README.md
	
