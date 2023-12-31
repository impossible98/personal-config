.POSIX:
SHELL := /bin/bash
YARN  := $(shell which yarn)

lint:
	shellcheck tools/install.sh
format:
	$(YARN) run format
install:
	$(YARN) install
### Git ###
log:
	git log --color --graph --pretty=oneline --abbrev-commit
