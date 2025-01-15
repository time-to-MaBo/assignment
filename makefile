title := Guessing Game
date_time := $(shell date)
num_lines := $(shell cat guessinggame.sh | wc -l)

create: 
	@echo "This is the project named $(title)."
	@echo "The make was called on $(date_time)."
	@echo "The number of lines in guessinggams.sh is $(num_lines)"	
	@touch readme.md
	@echo "# $(title)" > readme.md
	@echo "This is the project named $(title)." >> readme.md
	@echo "The make was called on $(date_time)." >> readme.md
	@echo "The number of lines in guessinggams.sh is $(num_lines)" >> readme.md
	@echo "The web page of the projet is https://$(git config user.name).github.io/"
