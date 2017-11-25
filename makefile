all: README.md

README.md: guessinggame.sh
	echo "#Guessing game project" > README.md
	echo "Date and time when makefile was run: `date` \n"  >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md  

clean:
	rm README.md
