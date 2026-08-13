FROM eclipse-temurin:21-jdk

USER root

RUN apt-get update \
    && apt-get install -y docker.io \
    && rm -rf /var/lib/apt/lists/*

ARG artifact=target/pipeline.jar

WORKDIR /opt/app
COPY ${artifact} app.jar

ENTRYPOINT ["java","-jar","app.jar"]
