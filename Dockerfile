FROM openjdk:8-jdk-alpine

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} stocks.jar

ENTRYPOINT ["java","-jar","/stocks.jar"]



