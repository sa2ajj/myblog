all: build

build:
	~/.local/bin/rstblog-build

fbuild: touch build

serve: build
	rstblog-serve

fserve: fbuild serve

publish: build
	git push
	rsync -avz --delete _build/ replacement.mawhrin.net:blog/

fpublish: fbuild publish

touch:
	@find . -name '*.rst' -exec touch {} \;

clean:
	rm -rf _build
