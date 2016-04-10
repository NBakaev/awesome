# Databases

 - [Как работает реляционная БД](http://habrahabr.ru/company/mailru/blog/266811/)
 - [aerospike - аналог и лучше Redis](https://github.com/aerospike/aerospike-server)

Run popular RDB from docker
```bash
docker run --name mysql-server -e MYSQL_ROOT_PASSWORD=INSERT_HERE_MEGA_PASSWORD_FOR_ROOT -p 3306:3306 -d mysql/mysql-server:5.7
docker run --name postgres -e POSTGRES_PASSWORD=INSERT_HERE_MEGA_PASSWORD_FOR_ROOT -p 5432:5432 -d postgres
docker run --name mariadb -e MYSQL_ROOT_PASSWORD=INSERT_HERE_MEGA_PASSWORD_FOR_ROOT -p 3306:3306 -d mariadb:latest
```
