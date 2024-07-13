.PHONY: build clean

##:build: Create website in docs subdirectory
build:
	@echo "(Fake) Building..."
	emacs -Q --script build-pages.el

##:clean: Removes all generated artifacts
clean:
	@echo "(Fake) Cleaning..."

##:help:  Prints a help message
help:
	@echo "(Fake) Helping..."
