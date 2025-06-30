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

# Use a multi-stage build for optimization
FROM eclipse-temurin:17-jdk-alpine AS builder
WORKDIR /app
COPY . .
RUN ./mvnw clean package -DskipTests
# Final stage with minimal runtime
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
# Add a non-root user for security
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
# Copy the jar from builder stage - using your custom name
COPY --from=builder /app/target/spring-application-github.jar app.jar
# Configure health check
HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget --quiet --tries=1 --spider http://localhost:2255/actuator/health || exit 1
# Set environment variables
ENV JAVA_OPTS="-Xmx512m -Xms256m \
    -XX:+UseG1GC \
    -XX:+HeapDumpOnOutOfMemoryError \
    -XX:HeapDumpPath=/var/log/dump.hprof"

# Expose the application port
EXPOSE 8080
# Run the application
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar spring-application-github.jar"]
