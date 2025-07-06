# # Step 1: Use official OpenJDK as base image # openjdk:17-jdk-slim
# FROM eclipse-temurin:17-jdk-alpine
# WORKDIR /app
# COPY target/spring-application-github spring-application-github.jar
# EXPOSE  2255
# ENTRYPOINT ["java", "-jar", "spring-application-github.jar"]


FROM maven:3.9.6-eclipse-temurin-22-jammy AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17 AS builder
COPY --from=build /target/spring-application-github.jar spring-application-github.jar
EXPOSE 2255
ENTRYPOINT ["java", "-jar", "spring-application-github.jar"]
