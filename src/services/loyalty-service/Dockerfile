# Stage 1: Сборка проекта
FROM maven:3.8.1-openjdk-8-slim AS builder

WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline -B
COPY src src
RUN mvn clean package -B -DskipTests

# Stage 2: Финальный образ
FROM eclipse-temurin:8-jre-alpine

# Устанавливаем необходимые пакеты для wait-for-it.sh
RUN apk add --no-cache bash coreutils netcat-openbsd

WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar

# Копируем wait-for-it.sh
COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh

EXPOSE 8085

ENTRYPOINT ["/wait-for-it.sh", "postgres:5432", "--", "java", "-jar", "app.jar"]