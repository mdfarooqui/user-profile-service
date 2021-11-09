# For Java 8, try this
# FROM openjdk:8-jdk-alpine

# For Java 11, try this
FROM openjdk:8-jdk-alpine

EXPOSE 8080

ADD target/user.profile.service-10.0-SNAPSHOT docker-user-profile-service.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","/docker-user-profile-service.jar"]
