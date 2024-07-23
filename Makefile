all: up

up:
	@docker-compose -f srcs/docker-compose.yml up

down:
	@docker-compose -f srcs/docker-compose.yml down

start:
	@docker-compose -f srcs/docker-compose.yml start

stop:
	@docker-compose -f srcs/docker-compose.yml stop

status:
	@docker ps

image:
	@docker image ls