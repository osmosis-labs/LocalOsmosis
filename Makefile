start:
	sudo docker-compose up

stop:
	sudo docker-compose stop

restart:
	sudo docker-compose rm
	rm -r ./data/*
	cp priv_validator_state.json ./data
