docker_wordpress = multisite_wordpress
docker_mysql = multisite_mysql

#some commands
start: #Containers start
	@docker-compose up -d

stop: #Stop
	@docker-compose stop

down: #Stop
	@docker-compose down

show_containers:
	@docker ps

show_containers_all:
	@docker ps -a

rm_all:
	@docker rm -vf $$(docker ps -aq)

rmi_all:
	@docker rmi -f $$(docker images -aq)

connect_wordpress:
	@docker exec -it $(docker_wordpress) bash

connect_mysql:
	@docker exec -it $(docker_mysql) bash
