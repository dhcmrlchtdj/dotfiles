.PHONY: sqlite
sqlite:
	rm -rf ~/.sqliterc
	ln -s `pwd`/sqlite/sqliterc ~/.sqliterc
