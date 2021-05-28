FROM maven:3.8-openjdk-16
COPY . /tmp/build
WORKDIR /tmp/build
RUN ["mvn", "package"]

FROM openjdk:16-alpine
RUN mkdir /home/container &&\
    mkdir /home/container/plugins &&\
    wget https://papermc.io/api/v2/projects/waterfall/versions/1.16/builds/422/downloads/waterfall-1.16-422.jar -O /home/container/proxy.jar
COPY --from=0 /tmp/build/target/bungee-core-*-SNAPSHOT.jar /home/container/plugins/bungee-core.jar

WORKDIR /home/container

CMD ["java","-jar", "/home/container/proxy.jar"]