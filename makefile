all: README.md

README.md: guessinggame.sh
	echo "##Bash, Make, Git, and GitHub" > README.md
	echo "- Date of the creation: " -n >> README.md
	date >> README.md
	echo "- Number of lines in the code: " -n >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
