# 베이스 이미지
FROM openjdk:17-jdk-slim

# 작업 디렉토리 설정
WORKDIR /app

# 포트 설정
EXPOSE 8080
EXPOSE 8081

# 실제 존재하는 JAR 파일로 경로 변경!
ADD target/sk012-my-app-1.0.0.jar app.jar

# 실행
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-Dspring.profiles.active=prod", "-jar", "app.jar"]
