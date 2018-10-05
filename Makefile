serve: deps
serve:	## Serve website
	hugo server -v -D --disableFastRender

deps:
	git submodule foreach git pull origin master

setup:
	git submodule add https://github.com/goombaio/docs-theme.git themes/default

include Makefile.help.mk