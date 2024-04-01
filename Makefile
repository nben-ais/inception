DOCKER_COMPOSE_PATH	:= src/docker-compose.yml

build:
	mkdir -p ~/data
	mkdir -p ~/data/html
	mkdir -p ~/data/mysql
	docker compose -f $(DOCKER_COMPOSE_PATH) up --build

kill:
	docker compose -f $(DOCKER_COMPOSE_PATH) kill
	docker system  prune -a
	docker volume  prune -a
	docker volume rm src_db_data src_wp_data
	sudo rm -rf ~/data

down:
	docker compose -f $(DOCKER_COMPOSE_PATH) down