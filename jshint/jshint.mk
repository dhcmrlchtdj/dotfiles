.PHONY: jshintD
jshintD:
	rm -rf ~/.jshintrc


.PHONY: jshint
jshint: jshintD
	ln -s `pwd`/jshint/jshintrc ~/.jshintrc
