run:
	@docker-compose -f ./srcs/docker-compose.yml up -d --build
	@echo "docker-compose makeing successfull"
stop:
	@docker-compose -f ./srcs/docker-compose.yml stop
	@echo "docker-compose stop successfull"
rm_v:
	sudo rm -rf  /home/amrakibe/data/srcs_db/*
	sudo rm -rf  /home/amrakibe/data/srcs_wp/*
	@docker volume rm srcs_wp -f
	@docker volume rm srcs_db -f
	@echo "docker-compose remove volumes successfull"
rm:
	@docker rm -f $$(docker ps -a -q)
	@docker rmi -f $$(docker images -a -q)
rm_n:
	@docker network prune -f
	@echo "docker-compose remove network successfull"
