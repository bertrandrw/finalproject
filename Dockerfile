# Use a base image with Java
FROM adoptopenjdk/openjdk8:alpine

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file from the target directory to the container
COPY target/Hotel-Reservation-Postgres-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port that your Spring Boot application uses (default is 8080)
EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
