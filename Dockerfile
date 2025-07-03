# # 🧱 Stage 1: Build the application using Maven
# FROM maven:3.9.6-eclipse-temurin-22-jammy AS builder
# # Set working directory
# WORKDIR /app
# # Copy source code to container
# COPY . .
# # Build the application and skip tests
# RUN mvn clean package -DskipTests
# # 🚀 Stage 2: Create lightweight runtime image
# FROM eclipse-temurin:17-jdk-jammy
# # Create app directory
# WORKDIR /app
# # Copy only the built JAR from the previous stage
# COPY --from=builder /app/target/spring-application-github.jar spring-application-github.jar
# # Expose application port
# EXPOSE 2255
# # Run the application
# ENTRYPOINT ["java", "-jar", "spring-application-github.jar"]






# # Step 1: Use official OpenJDK as base image
# FROM openjdk:17-oracle
# # Step 2: Set working directory inside the container
# WORKDIR /app
# # Step 3: Copy the JAR file from the host to the container
# COPY target/spring-application-github.jar spring-application-github.jar
# # Step 4: Expose the application port
# EXPOSE  2255
# # Step 5: Run the Spring Boot application
# ENTRYPOINT ["java", "-jar", "spring-application-github.jar"]


# FROM maven:3.9.6-eclipse-temurin-22-jammy AS build
# COPY . .
# RUN mvn clean package -DskipTests
#
# FROM openjdk:17 AS builder
# COPY --from=build /target/spring-application-github.jar spring-application-github.jar
# EXPOSE 2255
# ENTRYPOINT ["java", "-jar", "spring-application-github.jar"]

# Step 1: Use official OpenJDK as base image
FROM openjdk:17-jdk-slim
# Step 2: Set working directory inside the container
WORKDIR /app
# Step 3: Copy the JAR file from the host to the container
COPY target/spring-application-github.jar spring-application-github.jar
# Step 4: Expose the application port
EXPOSE  2255
# Step 5: Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "spring-application-github.jar"]
