FROM maven:3.6.3-openjdk-15 AS build
EXPOSE 9191
COPY ./ ./
RUN mvn clean package
CMD ["java","-jar","target/authorization-server-0.0.1.jar"]
