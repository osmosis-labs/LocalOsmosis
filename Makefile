CURRENT_UID := $(shell id -u)
CURRENT_GID := $(shell id -g)

start:
	env UID=${CURRENT_UID} GID=${CURRENT_GID}  docker-compose up

startd:
	env UID=${CURRENT_UID} GID=${CURRENT_GID}  docker-compose up -d

stop:
	docker-compose stop

reset:
	docker-compose rm
	rm -rf ./osmosis/data/ || true 
	rm -rf ./juno/data/ || true 
	mkdir -p ./osmosis/data/
	mkdir -p ./juno/data/
	cp ./osmosis/priv_validator_state.json ./osmosis/data
	cp ./juno/priv_validator_state.json ./juno/data

restart: reset start