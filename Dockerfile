# crea el jar de la aplicacion en una imagen temporal
FROM openjdk:8u181-jdk-alpine AS build

RUN mkdir -p /app/src
WORKDIR /app/src
COPY . /app/src

RUN ./gradlew build

RUN rm -rf /app/src

ENTRYPOINT ["sh","-c","echo 'running'"]
