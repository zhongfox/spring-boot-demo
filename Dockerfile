FROM java:8-alpine
COPY ./target/*.jar /app.jar
WORKDIR /
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
