all: up

up:
	@docker-compose -f srcs/docker-compose.yml up -d

down:
	@docker-compose -f srcs/docker-compose.yml down

start:
	@docker-compose -f srcs/docker-compose.yml start -d

stop:
	@docker-compose -f srcs/docker-compose.yml stop

status:
	@docker ps

rm:
	@if [ -n "$$(docker ps -a -q)" ]; then \
		echo "Stopping containers..."; \
		docker stop $$(docker ps -a -q); \
	else \
		echo "No containers to stop."; \
	fi
	@if [ -n "$$(docker ps -a -q)" ]; then \
		echo "Removing containers..."; \
		docker rm $$(docker ps -a -q); \
	else \
		echo "No containers to remove."; \
	fi
	@if [ -n "$$(docker images -q)" ]; then \
		echo "Removing images..."; \
		docker rmi $$(docker images -q); \
	else \
		echo "No images to remove."; \
	fi

image:
	@docker image ls

.PHONY: rm all up down start stop status image