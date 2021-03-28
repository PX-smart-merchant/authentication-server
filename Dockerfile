FROM maven:3.6.3-openjdk-15
EXPOSE 9191
RUN mvn clean package
COPY target/authorization-server-0.0.1.jar auth-server.jar
ENTRYPOINT ["java","-jar","/auth-server.jar"]