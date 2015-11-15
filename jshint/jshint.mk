.PHONY: jshint
jshint:
	rm -rf ~/.jshintrc
	ln -s `pwd`/jshint/jshintrc ~/.jshintrc
	@echo
