.PHONY: build clean

##:build: Create website in docs subdirectory
build:
	emacs -Q --script build-pages.el

##:clean: Removes all generated artifacts
clean:
	rm -r docs/*

##:help:  Prints a help message
help:
	@echo "The following targets are available:\n"
	@grep "\#\#:" Makefile | cut -c 4-

##:serve: Runs a local http server at port 8000 serving the website
serve:
	python -m http.server --directory=docs


