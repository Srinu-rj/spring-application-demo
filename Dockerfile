# Step 1: Use official OpenJDK as base image # openjdk:17-jdk-slim
FROM eclipse-temurin:17-jdk-alpine
RUN apk add curl
VOLUME /tmp
WORKDIR /app
COPY target/spring-application-github spring-application-github.jar
EXPOSE  2255
ENTRYPOINT ["java", "-jar", "spring-application-github.jar"]
