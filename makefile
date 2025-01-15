title := Guessing Game
date_time := $(shell date)
num_lines := $(shell cat guessinggame.sh | wc -l)
project_name := $(shell git remote -v | cut -d'/' -f5 | cut -d'.' -f1| uniq)

create: 
	@echo "This is the project $(title) in the repository $(project_name)."
	@echo "The make was called on $(date_time)."
	@echo "The number of lines in guessinggams.sh is $(num_lines)."	
	@touch readme.md
	@echo "# $(title)" > readme.md
	@echo "This is the project named $(title)." >> readme.md
	@echo "The make was called on $(date_time)." >> readme.md
	@echo "The number of lines in guessinggams.sh is $(num_lines)" >> readme.md
	@echo "The web page of the project can be found [here](https://$(shell git config user.name).github.io/$(project_name)/), provided you have set up and pushed the GitHub project or you are on my GitHub page." >> readme.md
