SHELL := /bin/bash


.PHONY: usage
usage:
	@echo "make show	# show available"


include */*.mk


.PHONY: show
show:
	@make -nprR | sed -ne '/^$$/{ n; /^[^#.]/{ s/:.*//; p; }; }' | sort -u
