FROM openjdk:8-jdk-alpine

# Copy local code to the container image.
WORKDIR /app
COPY pom.xml ./
COPY src ./src/

# Build a release artifact.
RUN mvn package -DskipTests

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} stocks.jar

ENTRYPOINT ["java","-jar","/stocks.jar"]



