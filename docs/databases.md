# Databases

 - [Как работает реляционная БД](http://habrahabr.ru/company/mailru/blog/266811/)
 - [aerospike - аналог и лучше Redis](https://github.com/aerospike/aerospike-server)
 - [How We Partitioned Airbnb’s Main Database in Two Weeks](http://nerds.airbnb.com/how-we-partitioned-airbnbs-main-db/)
 - [:star: percona.com](https://www.percona.com/)
 - [SQL cheat sheetx](http://zeroturnaround.com/rebellabs/sql-cheat-sheet/)
 - [Stolon: создаем кластер PostgreSQL с автофейловером](http://eax.me/stolon/)
 - [Документация разработчика Hibernate – Глава I. Доступ к базе данных](https://habrahabr.ru/post/301384/)
 - [Уровни изоляции транзакций с примерами на PostgreSQL](https://habrahabr.ru/post/317884/)

## Transactions
 - [SQL Transactions - What they are good for and how they work](http://www.slideshare.net/MarkusWinand/sql-transactions-what-they-are-good-for-and-how-they-work)
 - [Короткая шпаргалка по блокировкам при чтении и изменении данных в зависимости от уровня изоляции транзакции в MSSQL](https://habrahabr.ru/post/305600/)

### NoSQL
 - Aerospike
 - Redis
 - MongoDB

Run popular RDB from docker
```bash
docker run --name mysql-server -e MYSQL_ROOT_PASSWORD=INSERT_HERE_MEGA_PASSWORD_FOR_ROOT -p 3306:3306 -d mysql/mysql-server:5.7
docker run --name postgres -e POSTGRES_PASSWORD=INSERT_HERE_MEGA_PASSWORD_FOR_ROOT -p 5432:5432 -d postgres
docker run --name mariadb -e MYSQL_ROOT_PASSWORD=INSERT_HERE_MEGA_PASSWORD_FOR_ROOT -p 3306:3306 -d mariadb:latest
```
