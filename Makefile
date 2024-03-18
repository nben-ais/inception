DOCKER_COMPOSE_PATH	:= src/docker-compose.yml

build:
	docker compose -f $(DOCKER_COMPOSE_PATH) up --build

kill:
	docker compose -f $(DOCKER_COMPOSE_PATH) kill
	docker system  prune -a
	docker volume  prune -a

down:
	docker compose -f $(DOCKER_COMPOSE_PATH) down