## Инструменты
 - [sonarqube - авто поиск bug в коде](http://www.sonarqube.org/)
 - [team city groovy - пример team city](http://ci.groovy-lang.org/?guest=1)
 - [Развертывание JetBrains Hub + Youtrack + Upsource + Nginx на своем сервере Debian 8](http://habrahabr.ru/post/266871/)
 - [Представляем Hub 1.0 — коннектор для командных продуктов JetBrains](http://habrahabr.ru/company/JetBrains/blog/264943/)
 -  https://hub.docker.com/r/cptactionhank/atlassian-confluence/
 - [Как проинтегрировать TeamCity и Bitbucket Server](https://habrahabr.ru/post/282457)

```bash
 docker run --detach --publish 8090:8090 cptactionhank/atlassian-confluence:latest
```

### Gitlab
Git server. similar to github but self-hosted

- [Gitlab 8.0 - git server with UI...](https://about.gitlab.com/2015/09/22/gitlab-8-0-released/)
- [GitHub vs GitLabs vs BitBucket Server (Formerly Stash)](http://technologyconversations.com/2015/10/16/github-vs-gitlabs-vs-bitbucket-server-formerly-stash/)
- [GitLab Container Registry](https://about.gitlab.com/2016/05/23/gitlab-container-registry/)

### :star: TeamCity
CI server
 - [see teamCity docker](https://github.com/NBakaev/awesome/blob/master/common/TeamCity)
 - [TeamCity Artifactory Plug-in](https://www.jfrog.com/confluence/display/RTF/TeamCity+Artifactory+Plug-in)
 - [running-teamcity-on-kubernetes](http://tech.small-improvements.com/2015/04/09/running-teamcity-on-kubernetes/)
 - [Improved continuous deployment using Ansible, Docker, SQS and TeamCity](https://www.whaletech.co/2015/03/29/deploying-to-aws-using-ansible-docker-and-teamcity.html)
 - [tcSlackBuildNotifier  - slack - Лучший плагн](https://github.com/PeteGoo/tcSlackBuildNotifier)
 - [TCSlackNotifierPlugin - slack - еще плагин](https://github.com/Tapadoo/TCSlackNotifierPlugin)

### Travis CI
OSS SaaS
 - [How to publish artifacts in Travis CI?](http://stackoverflow.com/questions/12343452/how-to-publish-artifacts-in-travis-ci)
 -  https://docs.travis-ci.com/user/deployment/bintray
 -  https://docs.travis-ci.com/user/encryption-keys/
 - `travis encrypt key=value --add env.global`

### Binary repo
Store packages, builds results

 - http://www.sonatype.org/nexus/

#### Artifactory
Human-friendly alternative to nexus

- [bintray, artifactory - хранения бинарников, maven...](https://bintray.com/account/pricing?tab=account&type=pricing)
- [Publishing Your Maven Project to Bintray](https://blog.bintray.com/2015/09/17/publishing-your-maven-project-to-bintray/)

`docker run -d --name artifactory -p 8081:8081 -v /home/artifactory/data:/var/opt/jfrog/artifactory/data -v /home/artifactory/logs:/var/opt/jfrog/artifactory/logs -v /home/artifactory/backup:/var/opt/jfrog/artifactory/backup jfrog-docker-reg2.bintray.io/jfrog/artifactory-oss:4.4.3`

### Wiki
 - [MediaWiki](https://www.mediawiki.org/wiki/MediaWiki)
 - wordpress