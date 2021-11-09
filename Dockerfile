# For Java 8, try this
# FROM openjdk:8-jdk-alpine

# For Java 11, try this
FROM openjdk:8-jdk-alpine

EXPOSE 8080

# Refer to Maven build -> finalName
ARG JAR_FILE=target/user-profile-service.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} user-profile-service.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","user-profile-service.jar"]

## sudo docker run -p 8080:8080 -t docker-spring-boot:1.0
## sudo docker run -p 80:8080 -t docker-spring-boot:1.0
## sudo docker run -p 443:8443 -t docker-spring-boot:1.0