init:
	@git submodule update --init

start:
	@docker-compose up -d

update:
	@git pull
	@git submodule update

.DEFAULT_GOAL=update
.PHONY: init \
		update
