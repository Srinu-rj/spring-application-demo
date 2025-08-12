FROM eclipse-temurin:17-jdk-alpine AS build
COPY . .
LABEL maintainer="sreenivasa raju | dnsrinu143@gmail.com"
LABEL version="v:1.0.0"
LABEL description="A Docker image for a Spring Boot application."
EXPOSE 1199
ENTRYPOINT ["java", "-XX:MaxRAMPercentage=75.0","-jar", "spring-application-github.jar"]
USER nobody


#FROM eclipse-temurin:21.0.3_9-jdk-jammy AS builder
#WORKDIR /build
#COPY . .
#RUN ./mvnw package -DskipTests
#ENTRYPOINT ["java", "-XX:MaxRAMPercentage=75.0","-jar", "/spring-application-github.jar"]
#USER raju

# TODO DOCKER BASE IMAGES: -> https://dev.to/devaaai/best-docker-base-images-and-performance-optimization-for-java-applications-in-2025-kdd


