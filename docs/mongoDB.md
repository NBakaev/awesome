# MongoDB
NoSQL база данных

 - [Setting up sharded mongodb cluster in localhost](http://www.javacodegeeks.com/2015/02/setting-up-sharded-mongodb-cluster-in-localhost.html)
 - [:Star: MongoDB Administration | Pluralsight](https://www.pluralsight.com/courses/mongodb-administration)
 - [7 Simple Speed Solutions for MongoDB](https://www.sitepoint.com/7-simple-speed-solutions-mongodb/)
 - [slideshare: MongoDB Schema Design and Performance Implications](https://www.slideshare.net/slideshow/embed_code/63344065)

### Using MongoDB with Hadoop & Spark
 - [Using MongoDB with Hadoop & Spark: Part 1 - Introduction & Setup](https://www.mongodb.com/blog/post/using-mongodb-hadoop-spark-part-1-introduction-setup)
 - [Using MongoDB with Hadoop & Spark: Part 2 - Hive Example](https://www.mongodb.com/blog/post/using-mongodb-hadoop-spark-part-2-hive-example)
 - [Creating a Single View Part 3: Data Design and Loading Strategies](https://www.mongodb.com/blog/post/creating-single-view-part-3-data-design-and-loading-strategies)
 - [Weather of the Century: Part 4 - cool](https://www.mongodb.com/blog/post/weather-century-part-4)

 - [Leaf in the Wild: Square Enix Scales TOMB RAIDER, HITMAN ABSOLUTION, DEUS EX & more on MongoDB](https://www.mongodb.com/blog/post/leaf-in-the-wild-square-enix-scales-tomb-raider-hitman-absolution-deus-ex-and-more-on-mongodb)
 - [Retail Reference Architecture Part 3: Query Optimization and Scaling](https://www.mongodb.com/blog/post/retail-reference-architecture-part-3-query-optimization-and-scaling)

### mongodb time series data
 - [1](http://blog.mongodb.org/post/65517193370/schema-design-for-time-series-data-in-mongodb)
 - [2](https://www.mongodb.com/presentations/mongodb-time-series-data-part-2-analyzing-time-series-data-using-aggregation-framework)
 - [3](https://www.mongodb.com/presentations/mongodb-time-series-data-part-3-sharding)

###
 - [mongochef - MongoDB gui](http://3t.io/blog/mongodb-aggregation-queries-easily-mongochef/)
 - [MongoDB on AWS Guidelines and Best Practices ](http://d0.awsstatic.com/whitepapers/AWS_NoSQL_MongoDB.pdf)
 - [On Selecting a Shard Key for MongoDB](https://www.mongodb.com/blog/post/on-selecting-a-shard-key-for-mongodb)

###
 - [Шпаргалка по mongodb: e-commerce, миграция, часто применяемые операции и немного о транзакциях, habr](http://habrahabr.ru/post/259219/)
 - [:star: Примеры использования MongoDB в e-commerce (часть 2), habr](http://habrahabr.ru/post/260291/)
 - [MongoDB: Запросы, habr](http://habrahabr.ru/post/134590/)
 - [Map-Reduce на примере MongoDB](http://habrahabr.ru/post/184130/)

### MongoDB & Java
 - [Spring data mongodb reference](http://docs.spring.io/spring-data/mongodb/docs/current/reference/html/)
 - [MongoDB REACTIVE STREAMS JAVA DRIVER](http://mongodb.github.io/mongo-java-driver-reactivestreams/1.2/getting-started/quick-tour-primer/)
 - [:star: jongo - Query in Java as in Mongo shell](http://jongo.org/)

 - [Spring Data MongoDB remove _class column](http://www.mkyong.com/mongodb/spring-data-mongodb-remove-_class-column/)
 - [Morphia Documentation](http://mongodb.github.io/morphia/1.2/)

###
 - [install-mongodb-on-ubuntu](http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/)
 - [Configuration File Options](http://docs.mongodb.org/manual/reference/configuration-options/#dbpath)
 - [Mongo Db x509 auth](http://docs.mongodb.org/manual/tutorial/configure-x509-client-authentication/#x509-client-authentication)
 - [mongoose](https://github.com/Automattic/mongoose)
 - [Почему не все так просто с MongoDB](http://habrahabr.ru/post/265747/)
 - [MongoDB: Advanced Administration, Monitoring and Backup, airpair](https://www.airpair.com/mongodb/posts/mongodb-advanced-administration-mon-and-backup)
 - [Scaling MongoDB at Mailbox, dropbox](https://blogs.dropbox.com/tech/2013/09/scaling-mongodb-at-mailbox/)
 - [Call me maybe: MongoDB stale reads](https://aphyr.com/posts/322-call-me-maybe-mongodb-stale-reads)
 - [Переходим от MongoDB Full Text к ElasticSearch](http://habrahabr.ru/company/likeastore/blog/223109/)

 - [Embedded MongoDB, java](https://github.com/flapdoodle-oss/de.flapdoodle.embed.mongo)

### Transactions
 - [rystsov/mongodb-transaction-example](https://github.com/rystsov/mongodb-transaction-example)
 - [How to Implement Robust and Scalable Transactions Across Documents with MongoDB](https://dzone.com/articles/how-implement-robust-and)
 - [Транзакции в MongoDB](https://habrahabr.ru/post/153321/)
 - [Perform Two Phase Commits](https://docs.mongodb.org/manual/tutorial/perform-two-phase-commits/)

## Code snippets

### Drop all mongodb indexes in shell
```js
db.getCollectionNames().forEach(function(collName) {
  db.runCommand({dropIndexes: collName, index: "*"});
});
```

### Shell query
https://docs.mongodb.org/getting-started/shell/query/
```js
db.adminCommand( { listDatabases: 1 } )
```

### Users

```js
> use books;
switched to db books
> db.createUser( { "user" : "admin_books", "pwd": "pass", "roles" : ["dbOwner"] } )
Successfully added user: { "user" : "admin_books", "roles" : [ "dbOwner" ] }
```

### Run MongoDB
```bash
    mongod --dbpath "/home/mongodb/data" --storageEngine wiredTiger --config "/home/mongodb/mongodb.conf" --logpath "/home/mongodb/logs/main.log" --fork --bind_ip 0.0.0.0
```

### First run
When you have fresh database and want auth - firstly you should connect to mongo from localhost(`mongo` in cmd).
Then `use admin` . Then create user with `root` or `userAdminAnyDatabase` role.
https://docs.mongodb.org/v2.6/tutorial/add-admin-user/

```js
db.createUser(
  {
    user: "SECRET_LOGIN",
    pwd: "SECRET_PASSWORD",
    roles: [ { role: "root", db: "admin" } ]
  }
)
```
