all: build

build:
	rstblog-build

fbuild: touch build

serve: build
	rstblog-serve

fserve: fbuild serve

publish: build
	git push
	rsync -avz --delete _build/ prod.repoz.net:/var/www/sa2ajj/

fpublish: fbuild publish

touch:
	@find . -name '*.rst' -exec touch {} \;

clean:
	rm -rf _build
