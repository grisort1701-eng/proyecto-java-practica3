FROM openjdk:17-jdk-slim

WORKDIR /app

COPY . .

# Compilar los archivos Java dentro del paquete
RUN javac -d . ./main/java/com/mycompany/practica3/*.java

# Ejecutar el programa principal
CMD ["java", "-cp", ".", "com.mycompany.practica3.Practica3"]
