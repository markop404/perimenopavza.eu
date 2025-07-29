build:
	hugo --minify --cleanDestinationDir --gc --ignoreCache

run: 
	hugo server --disableFastRender --cleanDestinationDir --gc --ignoreCache

install:
	npm install

update: install
	npm update

push: pull
	git add . && git commit -m "Update" && git push

pull: 
	git pull