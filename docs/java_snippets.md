
``` java
List<BigDecimal> bdList = new ArrayList<>();
//populate list

BigDecimal result = bdList.stream().reduce(BigDecimal.ZERO, BigDecimal::add);
```

```bash
# Check updates for maven dependency
mvn versions:display-dependency-updates
```

`-ea -Xmx3048m -XX:-UseGCOverheadLimit -XX:+UseConcMarkSweepGC`

## async profiler

1) Взять архив и скопировать в /tmp на сервер где запущен some-container-name под
2) cd /tmp
3) выполнить tar -xvf async-profiler-1.7.1-linux-x64.tar.gz
4) выполнить
docker ps | grep "some-container-name" - взять первый столбец - ID контейнера
подставить его в
docker top {CONT_ID}

5) Тут взять второй столбец PID (далее {PID} )
далее выполнить

docker cp build {CONT_ID}:/tmp

6) далее выполнить

./profiler.sh -d 30 -f cpu-flame-graph.svg --title "CPU profile" --width 1600 {PID}

7) когда выполнится команда - выполнить

docker cp {CONT_ID}:/tmp/cpu-flame-graph.svg .

8) И в текущей папке будет файл cpu-flame-graph

(выполнять от root)