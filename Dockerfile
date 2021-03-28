FROM maven:3.6.3-openjdk-15
EXPOSE 9191
ARG JAR_FILE=./target/authorization-server-0.0.1.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]