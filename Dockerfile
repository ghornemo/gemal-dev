FROM amazoncorretto:21-alpine

WORKDIR /app

COPY target/gemal-dev.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]