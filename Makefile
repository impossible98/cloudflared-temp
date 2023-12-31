.POSIX:
SHELL := /bin/bash
YARN  := $(shell which yarn)

dev:
	$(YARN) run dev
format:
	$(YARN) run format
install:
	$(YARN) install
start: format
	$(YARN) run start
### Git ###
log:
	git log --color --graph --pretty=oneline --abbrev-commit
