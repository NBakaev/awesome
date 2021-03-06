# API / REST / Documentation

 - [Investigating Api Developer Tooling](http://www.mayerdan.com/programming/2014/01/29/investigating-api-tooling/)
 - [Hypermedia — то без чего ваше API не совсем REST](https://habrahabr.ru/company/aligntechnology/blog/281206/)
 - [Hyphen, underscore, or camelCase as word delimiter in URIs?](https://stackoverflow.com/questions/10302179/hyphen-underscore-or-camelcase-as-word-delimiter-in-uris)
 - [Когда мы написали сотое API мы поняли…](https://habrahabr.ru/post/283092/comments/)
 - [:star: Microsoft (REST) api guidelines](https://github.com/Microsoft/api-guidelines/blob/master/Guidelines.md)
 - [10 Mistakes to Avoid When Building Your API](http://blog.hellosign.com/10-mistakes-to-avoid-when-building-your-api/)
 - [Ask HN: What is your go-to example for a good REST API?](https://news.ycombinator.com/item?id=11971491)
 - [ReDoc - OpenAPI/Swagger-generated API Reference Documentation ](https://github.com/Rebilly/ReDoc)

### REST API examples
 - [Dropbox API Explorer](https://dropbox.github.io/dropbox-api-v2-explorer/)
 - [ecwid.com](https://developers.ecwid.com/api-documentation#get-access-token)
 - [github]( https://developer.github.com/v3/)

## REST API GUI

### :star: Postman
 - [How to write powerful automated API tests with Postman, Newman and Jenkins](http://blog.getpostman.com/2015/09/03/how-to-write-powerful-automated-api-tests-with-postman-newman-and-jenkins/)
 - [newman - Command-line companion utility for Postman](https://www.npmjs.com/package/newman)
 - [Testing examples](https://www.getpostman.com/docs/testing_examples)

###
 - [insomnia.rest - A simple, beautiful, and free REST API client Mac, Windows, and Linux](https://insomnia.rest/)
 - [httpie command](https://jonlabelle.com/snippets/view/shell/httpie-command)

## Perfomance test

 - https://github.com/yandex/yandex-tank

### locust

http://docs.locust.io/en/latest/running-locust-distributed.html

```bash
pip install locustio
locust -f locu.py --host=http://192.168.1.98:10001 --master
locust -f locu.py --slave --master-host=127.0.0.1
```

## RPC / DTO
 - [Trift (facebook)](https://thrift.apache.org/)
 - [brotobuff (google)](https://developers.google.com/protocol-buffers/)
 - [grpc (google)](http://www.grpc.io/)

## Swagger
Spec for auto generate REST documentation API
 - [github.com/swagger-api/swagger-codegen](https://github.com/swagger-api/swagger-codegen)
 - [springfox.github.io/springfox/docs/current/#springfox-samples](http://springfox.github.io/springfox/docs/current/#springfox-samples)
 - [github.com/Swagger2Markup/swagger2markup](https://github.com/Swagger2Markup/swagger2markup)
 - [Speed up your RESTful API development in Node.js with Swagger](https://scotch.io/tutorials/speed-up-your-restful-api-development-in-node-js-with-swagger)
 - [Swagger UI responsive theme](https://github.com/jensoleg/swagger-ui)

#### generate clients

Without header authentication
```bash
java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate -i http://localhost:8080/v2/api-docs -l java -o samples -v
```

With header authentication
```bash
java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate -i http://localhost:8080/v2/api-docs -l php -o samples -v -a "Authorization: Basic _SOME_BASH64_"
```

## Documentation
 - [Building Product Documentation with MkDocs](http://www.sitepoint.com/building-product-documentation-mkdocs/)
