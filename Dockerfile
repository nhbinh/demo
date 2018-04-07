FROM alpine:latest
ADD HelloWorld.class HelloWorld.class
RUN apt-get update && \
	apt-get install -y openjdk-8-jdk
ENTRYPOINT ["java", "", "HelloWorld"]