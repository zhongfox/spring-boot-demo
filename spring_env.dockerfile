FROM maven:3.5-jdk-8 as spring-cache
COPY ./ /src/spring-boot-demo
WORKDIR /src/spring-boot-demo
RUN ls /src/spring-boot-demo
RUN mvn package

FROM scratch
COPY --from=spring-cache /root/.m2/repository /root/.m2/repository

# docker build -t hub.tencentyun.com/foxzhong/spring-boot-repository -f ./spring_env.dockerfile .
