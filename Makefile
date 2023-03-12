build:
	docker-compose -f ./srcs/docker-compose.yml up -d --build
stop:
	docker-compose -f ./srcs/docker-compose.yml stop
	docker rm -f $$(docker ps -a -q)
	docker rmi -f $$(docker images -a -q)
	docker volume rm $$(docker volume ls -q)
	docker network rm $$(docker network ls -q)