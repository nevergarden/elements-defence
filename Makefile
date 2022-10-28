SOURCE_FILES = $(shell find src/ -type f -name '*')

all: bin/game.js

bin/game.js: $(SOURCE_FILES) build.hxml
	haxe build.hxml

clean:
	rm -f bin/game.js
