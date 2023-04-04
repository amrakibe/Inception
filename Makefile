run:
	@docker-compose -f ./srcs/docker-compose.yml up -d --build
	@echo "docker-compose makeing successfull"
stop:
	@docker-compose -f ./srcs/docker-compose.yml stop
	@echo "docker-compose stop successfull"
rm: stop
	@docker rm  $$(docker ps -a -q) -f
	@docker rmi  $$(docker images -a -q) -f
	@echo "docker-compose remove images and containers successfull"