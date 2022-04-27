# Desafio 4

## Descripcion

Dockerizar una aplicacion JAVA, Elaborar un pipeline que ante cada cambio realizado sobre el HelloController.java buildee la nueva imagen y la actualize en docker-hub, Para la creacion del CI/CD se puede utilizar Jenkins

Requisitos y deseables:

La solución al ejercicio debe mostrarnos que usted puede:

Automatizar la parte del proceso de despliegue. usar conceptos de CI para aprovisionar el software necesario para que los entregables se ejecuten use cualquier herramienta de CI de su elección para implementar el entregable


### Paso 1 — Una aplicación Java

Tenemos una aplicación en Java que ejecuta aislada localmente y en forma manual. Este es el punto de partida para cualquier desarrollo.

demo-app

### Paso 2 — Jenkins y un pipeline mínimo
Asumiendo que tenemos Jenkins instalado y correctamente configurado, podemos usarlo como infraestructura mínima para un pipeline.

Jenkins está preinstalado, acceda a él en http://localhost:8080/

Se agrega un pipeline básico en un nuevo archivo archivo Jenkinsfile; 

Finalmente, hacer clic en Build Now en Jenkins.

### Paso 3 — construcción de imagen Docker

Una imagen de Docker es simplemente un artefacto que representa una máquina virtual muy ligera. Para este curso, construiremos una imagen de Docker simple que contendrá:

Un sistema operativo Debian mínimo (“slim”)
La JDK 11, que incluye el servidor Tomcat, para ejecutar archivos .jar

docker build -t java-app .

### Paso 4 - Publicar tu imagen en Docker Hub

Lo primero que necesitas es crearte una cuenta en https://hub.docker.com.

```
docker login
````

Lo siguiente es preparar tu imagen para que sea aceptada en este registro público. Todos los registros siguen una nomenclatura a la hora de almacenar los repositorios. En el caso de Docker Hub necesitamos que nuestra imagen se llame

nombre_de_usuario/nombre_del_repositorio:etiqueta. 

```
docker tag java-app roxsross12/java-app:v1
```
Si ejecutas docker images, te darás cuenta de que no ha modificado la imagen original sino que simplemente se ha creado una especie de alias sobre la misma imagen, ya que el id de la imagen, tanto de la original como de esta, es el mismo. Ahora que ya cumplimos los requerimientos, utilizamos el comando docker push para subir la imagen:
```
docker push roxsross12/java-app:v1
```
El proceso puede durar unos instantes hasta que complete.


### Exitos 




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

