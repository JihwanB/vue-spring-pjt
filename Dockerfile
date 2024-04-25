FROM openjdk:17

ARG JAR_FILE=build/libs/*.jar

COPY ${JAR_FILE} backend.jar

ENTRYPOINT ["java", "-jar", "/backend.jar"]