FROM openjdk:17-jdk-slim

WORKDIR /app

EXPOSE 8080
EXPOSE 8081

COPY target/sk012-my-app-1.0.0.jar app.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-Dspring.profiles.active=prod", "-jar", "app.jar"]
