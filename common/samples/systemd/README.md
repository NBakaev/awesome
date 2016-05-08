# systemd
Startup scripts

## Notice

 - `docker run --name mariadb -e MYSQL_ROOT_PASSWORD=REPLACE_PASSWORD -p 3306:3306 -d mariadb:latest`
 - `docker run --name rsstinty --link=mariadb -d -e DB_NAME=rss -e DB_USER=rss -e DB_PASS=REPLACE_XXX -e DB_HOST=REPLACE_HOST -e DB_TYPE=mysql -e DB_PORT=3306 -p 81:80 clue/ttrss`
 - `docker run -d -p 82:80 --name=torrentmonitor -v /home/tm/torrents:/usr/share/nginx/html/torrentmonitor/torrents -v /home/tm/db/db:/usr/share/nginx/html/torrentmonitor/db nawa/torrentmonitor`
 - [nginx service](https://github.com/NBakaev/awesome/blob/master/common/nginx_make.sh)   

### VPN
 ```bash
 CID=$(docker run --name=vpn -d --privileged -p 1194:1194/udp -p 443:443/tcp jpetazzo/dockvpn)
 docker run -t -i -p 8080:8080 --volumes-from $CID jpetazzo/dockvpn serveconfig
 ```

## Usage
 - 1) copy to `/etc/systemd/system/`
 - 2) `systemctl enable mariadb`
 - 3) `systemctl enable rss`
 - 4) `systemctl enable docker.torrentmonitor`
 - manually start service `systemctl start mariab`
 - manually see status service `systemctl status mariab`
