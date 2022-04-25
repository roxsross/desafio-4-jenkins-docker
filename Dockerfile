FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /usr/home/app
COPY target/*.jar app.jar
EXPOSE 8090
CMD ["java", "-jar", "app.jar"]