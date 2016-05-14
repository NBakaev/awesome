
``` java
List<BigDecimal> bdList = new ArrayList<>();
//populate list

BigDecimal result = bdList.stream()
        .reduce(BigDecimal.ZERO, BigDecimal::add);
```

```bash
# Check updates for maven dependency
mvn versions:display-dependency-updates
```
