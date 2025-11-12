# 🏗️ Стадия сборки
FROM maven:3.8.7-eclipse-temurin-8 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# 🚀 Стадия рантайма
FROM eclipse-temurin:8-jre
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
