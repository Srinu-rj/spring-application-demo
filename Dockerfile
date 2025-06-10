# # Step 1: Use official OpenJDK as base image
# FROM openjdk:17-jdk-slim
# # Step 2: Set working directory inside the container
# WORKDIR /app
# # Step 3: Copy the JAR file from the host to the container
# COPY target/spring-application-github.jar spring-application-github.jar
# # Step 4: Expose the application port
# EXPOSE  2255
# # Step 5: Run the Spring Boot application
# ENTRYPOINT ["java", "-jar", "spring-application-github.jar"]


FROM maven:3.9.6-eclipse-temurin-22-jammy AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17 AS builder
COPY --from=build /target/spring-application-github.jar spring-application-github.jar
EXPOSE 2255
ENTRYPOINT ["java", "-jar", "spring-application-github.jar"]


# # Step 1: Use official OpenJDK as base image
# FROM openjdk:17-jdk-slim
# # Step 2: Set working directory inside the container
# WORKDIR /app
# # Step 3: Copy the JAR file from the host to the container
# COPY target/spring-application spring-application.jar
# # Step 4: Expose the application port
# EXPOSE  2255
# # Step 5: Run the Spring Boot application
# ENTRYPOINT ["java", "-jar", "spring-application.jar"]






