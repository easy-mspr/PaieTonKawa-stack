init:
	@git submodule update --init

start:
	@docker-compose up -d

update:
	@git pull
	@git -C orders pull
	@git -C products pull
	@git -C customers pull

.DEFAULT_GOAL=update
.PHONY: init \
		update
