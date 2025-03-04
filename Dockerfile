FROM maven:3.8.5-openjdk-17 AS build
COPY pom.xml /app/
WORKDIR /app/
RUN mvn dependency:go-offline
COPY . .
RUN mvn package -DskipTests

FROM openjdk:17-alpine
RUN mkdir -p /app/target/
COPY --from=build /app/target/*.jar /app/target/app.jar
EXPOSE 8761
ENTRYPOINT ["java", "-jar", "/app/target/app.jar"]
