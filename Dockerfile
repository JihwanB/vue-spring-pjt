## jenkins
#FROM openjdk:17
#
## add
## volume /tmp
#
#ARG JAR_FILE=build/libs/*.jar
#
#COPY ${JAR_FILE} backend.jar
#
#ENTRYPOINT ["java", "-jar", "/backend.jar"]


# git actions
FROM openjdk:17

#WORKDIR /app-backend

ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} vuespring.jar

ENTRYPOINT ["java", "-jar", "/vuespring.jar"]