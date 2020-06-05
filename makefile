all: README.md

README.md: guessinggame.sh
	echo "# Bash, Make, Git, and GitHub" > README.md
	echo -n "- Date of the creation: " >> README.md
	date >> README.md
	echo -n "- Number of lines in the code: " >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
