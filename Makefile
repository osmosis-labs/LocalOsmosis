start:
	docker-compose up

stop:
	docker-compose stop

restart:
	docker-compose rm
	rm -r ./data/*
	cp priv_validator_state.json ./data
