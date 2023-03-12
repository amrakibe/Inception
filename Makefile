build:
	docker-compose -f ./srcs/docker-compose.yml up -d
run:
	docker-compose -f .srcs/docker-compose.yml start