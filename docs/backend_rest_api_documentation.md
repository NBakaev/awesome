# API / REST / Documentation

 - [Investigating Api Developer Tooling](http://www.mayerdan.com/programming/2014/01/29/investigating-api-tooling/)
 - [Hypermedia — то без чего ваше API не совсем REST](https://habrahabr.ru/company/aligntechnology/blog/281206/)
 - [Hyphen, underscore, or camelCase as word delimiter in URIs?](https://stackoverflow.com/questions/10302179/hyphen-underscore-or-camelcase-as-word-delimiter-in-uris)

## Swagger - auto generate REST documentation API
 - [github.com/swagger-api/swagger-codegen](https://github.com/swagger-api/swagger-codegen)
 - [springfox.github.io/springfox/docs/current/#springfox-samples](http://springfox.github.io/springfox/docs/current/#springfox-samples)
 - [github.com/Swagger2Markup/swagger2markup](https://github.com/Swagger2Markup/swagger2markup)
 - [Speed up your RESTful API development in Node.js with Swagger](https://scotch.io/tutorials/speed-up-your-restful-api-development-in-node-js-with-swagger)
 - [Swagger UI responsive theme](https://github.com/jensoleg/swagger-ui)

#### REST Documentation

Without header authentication
```bash
java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate -i http://localhost:8080/v2/api-docs -l java -o samples -v
```

With header authentication
```bash
java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate -i http://localhost:8080/v2/api-docs -l php -o samples -v -a "Authorization: Basic _SOME_BASH64_"
```

## Remote RPC / DTO
 - Trift (facebook)
 - brotobuff (google)


## Documentation
 - [Building Product Documentation with MkDocs](http://www.sitepoint.com/building-product-documentation-mkdocs/)
