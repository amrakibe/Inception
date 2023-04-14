run:
	@docker-compose -f ./srcs/docker-compose.yml up -d --build
	@echo "docker-compose makeing successfull"
stop:
	@docker-compose -f ./srcs/docker-compose.yml stop
	@echo "docker-compose stop successfull"
rm:
	@docker volume rm srcs_db
	@docker volume rm srcs_wp
	@echo "docker-compose remove volumes successfull"
rm_v:
	@docker rm  $$(docker ps -a -q) -f
	@docker rmi  $$(docker images -a -q) -f
	@docker network prune -f