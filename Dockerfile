# Use a base image with Maven and Java
FROM maven:3.6.3-jdk-8 AS build
WORKDIR /app

# Copy the Maven project and build the application
COPY . .
RUN mvn clean package

# Create a separate lightweight container to run the application
FROM adoptopenjdk/openjdk8:alpine
WORKDIR /app

# Copy the packaged JAR file from the build container to the current container
COPY --from=build /app/target/Hotel-Reservation-Postgres-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port that your Spring Boot application uses (default is 8080)
EXPOSE 8080

# Command to run the Spring Boot application when the container starts
CMD ["java", "-jar", "app.jar"]

