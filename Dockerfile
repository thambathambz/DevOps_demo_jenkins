# # Use the official OpenJDK 11 image as the base image
# FROM openjdk:11

# # Set the working directory to /app
# WORKDIR /app

# # Copy the source code to the container
# COPY . .

# # Install Maven and build the application
# RUN apt-get update && \
#     apt-get install -y maven && \
#     mvn package -DskipTests

# # Expose port 8080 for the container
# EXPOSE 8080

# # Set the default command to run the application when the container starts
# #CMD [ "sleep", "200" ]
# CMD ["java", "-jar", "target/root.war"]
#----------------------------------------------------------------
FROM openjdk:11
#COPY /var/lib/jenkins/workspace/test-ci-pipeline/target/root.war app.war
COPY /var/lib/jenkins/workspace/**/**.war app.war

ENTRYPOINT ["java","-jar","/app.war"]
