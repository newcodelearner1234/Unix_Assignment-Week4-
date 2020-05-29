all: readme.md

readme.md: guessinggame.sh
	echo "## Course Assignment (The Unix Workbench)" > readme.md
	echo "*by Johns Hopkins University on [coursera.org](https://www.coursera.org/).*" >> readme.md
	echo "\n**TITLE(*Guess game*)**: a program called *guessinggame.sh*. This program will ask the user to guess the number of files in the current directory, until they guess the correct number of files is guessed by the user. The user will be informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory they are congratulated !!!" >> readme.md
	echo -n "\n**Date**: " >> readme.md
	date >> readme.md
	echo -n "\n**Number of lines in guessinggame.sh :** " >> readme.md
	grep -c '' guessinggame.sh >> readme.md
       

clean:
	rm readme.md
