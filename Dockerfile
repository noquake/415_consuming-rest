FROM openjdk:21

WORKDIR /app

COPY target/consuming-rest-0.0.1-SNAPSHOT.jar .

EXPOSE 8080

CMD ["java", "-jar", "/app/consuming-rest-0.0.1-SNAPSHOT.jar"]