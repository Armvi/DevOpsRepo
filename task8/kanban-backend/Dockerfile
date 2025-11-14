FROM maven:3.8.7-eclipse-temurin-8 AS build
WORKDIR /app
COPY . .
RUN mvn clean package

FROM eclipse-temurin:8-jre

ENV SPRING_DATASOURCE_URL=jdbc:postgresql://kanban-postgres/kanban \
    SPRING_DATASOURCE_USERNAME=kanban \
    SPRING_DATASOURCE_PASSWORD=kanban

WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
