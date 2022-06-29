CURRENT_UID := $(shell id -u)
CURRENT_GID := $(shell id -g)

start:
	env UID=${CURRENT_UID} GID=${CURRENT_GID}  docker-compose up

stop:
	docker-compose stop

reset:
	docker-compose rm
	rm -rf ./data/ || true 
	mkdir -p ./data/
	cp priv_validator_state.json ./data

restart: reset start