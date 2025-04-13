# Use an appropriate Java base image (OpenJDK 17)
FROM openjdk:17-jdk-slim

# Set up the working directory inside the container
WORKDIR /app

# Copy the Java .jar file into the container
COPY DevOpsSummative-1.0-SNAPSHOT.jar /app/DevOpsSummative-1.0-SNAPSHOT.jar

# Expose the necessary port (use 8080 for your Java Web App)
EXPOSE 8080

# Command to run the Java app
CMD ["java", "-jar", "/app/DevOpsSummative-1.0-SNAPSHOT.jar"]
