FROM openjdk:17-jdk-alpine
COPY target/sk012-my-app-1.0.0.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]
