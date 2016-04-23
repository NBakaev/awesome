# logentries.com

Exclude docker kubernetes containers `--skipByImage "gcr.io"`
		gcr.io/google_containers/exechealthz
		gcr.io/google_containers/pause

Launch agent which will listen docker socket. Insert logentries key `INSERT_SOME_KEY_HERE`
		docker run -d -v /var/run/docker.sock:/var/run/docker.sock logentries/docker-logentries -t INSERT_SOME_KEY_HERE -j --skipByImage "gcr.io"

####Set Up The Docker-Logentries Container and Git Clone Docker-Logentries repository.

		git clone https://github.com/logentries/docker-logentries.git
		cd docker-logentries
		docker build -t docker-logentries .

## Links

  - [Slack Integration](https://logentries.com/doc/slack/)
  - [Logging from the Docker Logentries Container](https://logentries.com/doc/docker-logentries-container/)
  - [Logstash Token-Based Plugin](https://logentries.com/doc/logstash/)
  - [Log Search](https://logentries.com/doc/search/#pattern)
	- [Automating Docker Logging: ElasticSearch, Logstash, Kibana, and Logspout](http://nathanleclaire.com/blog/2015/04/27/automating-docker-logging-elasticsearch-logstash-kibana-and-logspout/)
