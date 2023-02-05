FROM openjdk:17-alpine
WORKDIR /opt/app
ARG JAR_FILE=target/reward-points-store-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]