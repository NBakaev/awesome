# NodeJS
- [3 JavaScript ORMs You Might Not Know](http://www.sitepoint.com/3-javascript-orms-you-might-not-know/)
- [Long-running Node processes](http://techblog.spanning.com/2015/10/12/Long-running-Node-processes)
- [Node.js Security Checklist](https://blog.risingstack.com/node-js-security-checklist/)
- [Node.js and ES6 Instead of Java – A War Story](http://www.technology-ebay.de/the-teams/mobile-de/blog/nodejs-es6-war-story)
- [Get Open Graph Data with Node.js](https://davidwalsh.name/open-graph-data-nodejs)
- [Running a MEAN web application in Docker containers on AWS](http://blog.codeship.com/running-mean-web-application-docker-containers-aws/)
- [Making a Game API Server Using Node.js: Revisited](http://blog.couchbase.com/making-a-game-api-server-using-nodejs-revisited)
- [Introduction to the MEAN Stack](http://www.sitepoint.com/introduction-to-mean-stack/)
- [The Modern Application Stack – Part 3: Building a REST API Using Express.js](https://dzone.com/articles/the-modern-application-stack-part-3-building-a-res)
- [Build an Etsy Clone with Angular and Stamplay (Part 3)](https://scotch.io/tutorials/build-an-etsy-clone-with-angular-and-stamplay-part-3)
- [nodejs example]( https://github.com/KunalKapadia/express-mongoose-es6-rest-api)
- [ES6, class: building-a-scalable-node-js-express-app](https://medium.com/@zurfyx/building-a-scalable-node-js-express-app-1be1a7134cfd)
-  https://blog.risingstack.com/node-js-logging-tutorial/
- [Обзор базовых возможностей ES6](https://m.habrahabr.ru/post/313526/)
- [Делаем проект на Node.js с использованием Mongoose, Express, Cluster. Часть 1](https://m.habrahabr.ru/post/314394/)
- [async & await](https://davidwalsh.name/async-await)
- [Taking Advantage of Multi-Processor Environments in Node.js](https://blog.carbonfive.com/2014/02/28/taking-advantage-of-multi-processor-environments-in-node-js/)
 - [:star: Learn and Understand NodeJS](https://www.udemy.com/understand-nodejs/)

## Notes

Nodejs run in 1 thread (no concurrency such as in java), so:
 - You have not out of the box global static variable per thread (in Java - ThreadLocal<>) where you can store current rest request context(e.g. authenticated user, roles), but see e.g. [zone.js](https://github.com/angular/zone.js) and usage [Flow control and error handling for Node.js](https://github.com/strongloop/zone)
 - You should create multiple processes of nodejs (e.g. Docker) or with [core nodejs module cluster](https://www.bennadel.com/blog/3234-hello-world-concurrency-in-node-js-using-the-cluster-module.htm)

## Parse
(PaaS)
 - [Parse Server Changelog](https://github.com/ParsePlatform/parse-server/blob/master/CHANGELOG.md)
 - [Introducing the Parse Server Dashboard](http://blog.parse.com/announcements/introducing-the-parse-server-dashboard/)
 - [List of Parse alternative backend service providers](https://github.com/relatedcode/ParseAlternatives)
 - [Альтернативы сервису parse.com](https://habrahabr.ru/post/277979/)
 - [Что нам стоит «Parse» построить или как без особого напряжения поднять его opensourse-аналог на собственном сервере](https://habrahabr.ru/post/260345/)

## Typescript

 - [TypeScript-Node-Starter](https://github.com/Microsoft/TypeScript-Node-Starter)
 - [TypeScript: Библиотека tslib](https://habrahabr.ru/post/343818/)

##
 - [BigInteger.js](https://github.com/peterolson/BigInteger.js)
