# openjdk-8-alpine-with-gradle
Docker with open jdk 8 + Gradle 5.6.2

### Use this base docker image, example Dockerfile:

```Dockerfile
FROM vutreras/openjdk-8-alpine-with-gradle:latest AS build

RUN mkdir -p /app/src
WORKDIR /app/src
COPY . /app/src

RUN ./gradlew bootjar -x test

FROM openjdk:8u181-jdk-alpine

COPY --from=build /app/src/build/libs/app.jar /app/

ENTRYPOINT ["java", "-jar","/app/app.jar"]
```