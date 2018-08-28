FROM maven:3.5-jdk-8 as builder
COPY ./ /src/spring-boot-demo
WORKDIR /src/spring-boot-demo
RUN ls /src/spring-boot-demo
RUN mvn package

FROM java:8-alpine
COPY --from=builder /src/spring-boot-demo/target/gs-spring-boot-0.1.0.jar /app.jar
WORKDIR /
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]

# FROM ecsteam/spring-boot
# FROM lukastosic/maven-spring-boot
