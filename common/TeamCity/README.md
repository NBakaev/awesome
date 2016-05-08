## This is Team city server. Without agent
It used tocker and `Dockerfile` have the following commands

 * `docker build --tag=nbakaev/teamcity .` To build image
 * `docker run --name="teamcity" -d -v /home/teamcity:/root/.BuildServer -p 8111:8111 nbakaev/teamcity` and run
