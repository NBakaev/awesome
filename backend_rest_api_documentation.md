
## Remote RPC / DTO
 - Trift (facebook)
 - brotobuff (google)

### REST Documentation

Without header authentication
```bash
java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate -i http://localhost:8080/v2/api-docs -l java -o samples -v
```

With header authentication
```bash
java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate -i http://localhost:8080/v2/api-docs -l php -o samples -v -a "Authorization: Basic _SOME_BASH64_"
```

#### Swagger - auto generate REST documentation API
 - [https://github.com/swagger-api/swagger-codegen](https://github.com/swagger-api/swagger-codegen)
 - [http://springfox.github.io/springfox/docs/current/#springfox-samples](http://springfox.github.io/springfox/docs/current/#springfox-samples)
 - [https://github.com/Swagger2Markup/swagger2markup](https://github.com/Swagger2Markup/swagger2markup)
