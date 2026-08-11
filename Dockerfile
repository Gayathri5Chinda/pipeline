FROM eclipse-temurin:21-jdk

ARG artifact=target/pipeline.jar

WORKDIR /opt/app
COPY ${artifact} app.jar

ENTRYPOINT ["java","-jar","app.jar"]
