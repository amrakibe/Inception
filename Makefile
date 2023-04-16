run:
	@docker-compose -f ./srcs/docker-compose.yml up -d --build
	@echo "docker-compose makeing successfull"
stop:
	@docker-compose -f ./srcs/docker-compose.yml stop
	@echo "docker-compose stop successfull"
rm:
	@docker volume rm srcs_wp -f
	@docker volume rm srcs_db -f
	@echo "docker-compose remove volumes successfull"
rm_v:
	@docker rm -f $$(docker ps -a -q)
	@docker rmi -f $$(docker images -a -q)
	@rm -rf /Users/amrakibe/Desktop/volumes/srcs_db/*
	@rm -rf /Users/amrakibe/Desktop/volumes/srcs_wp/*
	@docker network prune -f