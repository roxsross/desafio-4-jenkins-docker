## Aplicacion Java

Pre-requistos
- Java 11
- Maven 3.8.5
- Sprint Boot 2.6.7

### Compilacion

```
mvn compile
```

### Test

```
mvn test
```

### Contruccion 
```
mvn -B -DskipTests clean package
```

### Correr de local
```
mvn spring-boot:run -Dspring-boot.run.jvmArguments='-Dserver.port=8090'
```

```
curl http://localhost:8090
```

### Resultado
```
curl http://localhost:8090
Hello Bootcamp DevOps!%   
````

