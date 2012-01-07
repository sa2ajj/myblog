all: build

build:
	rstblog-build

fbuild: clean build

serve: build
	rstblog-serve

fserve: clean serve

publish: build
	git push
	rsync -avz --delete _build/ prod.repoz.net:/var/www/sa2ajj/

fpublish: fbuild publish

clean:
	rm -rf _build
