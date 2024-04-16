init:
	@git submodule update --init

update:
	@git pull
	@git submodule update

.DEFAULT_GOAL=update
.PHONY: init \
		update
