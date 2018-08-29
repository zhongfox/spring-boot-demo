FROM hub.tencentyun.com/foxzhong/spring-boot-repository as spring-cache

FROM maven:3.5-jdk-8 as builder
COPY --from=spring-cache /root/.m2/repository /root/.m2/repository
COPY ./ /src/spring-boot-demo
WORKDIR /src/spring-boot-demo
RUN ls /src/spring-boot-demo
RUN mvn package

FROM java:8-alpine
COPY --from=builder /src/spring-boot-demo/target/gs-spring-boot-0.1.0.jar /app.jar
WORKDIR /
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
