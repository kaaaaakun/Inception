```sh
docker stop $(docker ps -qa); docker rm $(docker ps -qa); docker rmi -f $(docker images -qa); docker volume rm $(docker volume ls -q); docker network rm $(docker network ls -q) 2>/dev/null
```

db: mariadb
db_user
db_pass

データベースの入り方
docker exec -it mariadb

mysql -u  -p db_root_pass

show databases;
select * from <database_name>;
