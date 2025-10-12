# Imagen base con Java 17 y Maven
FROM maven:3.9.6-eclipse-temurin-17 AS build

# Carpeta de trabajo
WORKDIR /app

# Copiar el proyecto al contenedor
COPY . .

# Compilar el proyecto y crear el .jar
RUN mvn clean package -DskipTests

# Fase final: ejecutar el .jar
FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]
