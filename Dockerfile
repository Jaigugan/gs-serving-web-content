FROM ubuntu:latest

RUN \
# Update
apt-get update -y && \
# Install Java
apt-get install default-jre -y

RUN cp ./target/serving-web-content-0.0.1-SNAPSHOT.jar spring-mvc-example.jar

EXPOSE 8080

CMD java -jar spring-mvc-example.jar
