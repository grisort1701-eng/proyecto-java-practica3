# Usa Java 17 para compilar y ejecutar
FROM openjdk:17-jdk-slim

# Crea el directorio de trabajo
WORKDIR /app

# Copia todos los archivos del proyecto
COPY . .

# Compila todos los archivos .java dentro del proyecto
RUN javac $(find . -name "*.java")

# Ejecuta el programa principal
# 👇 CAMBIA este nombre por el paquete y clase principal de tu proyecto
CMD ["java", "com.mycompany.practica3.Practica3"]

