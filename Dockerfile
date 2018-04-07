FROM alpine:latest
ADD HelloWorld.class HelloWorld.class
RUN apt update && \
	apt install -y openjdk-8-jdk
ENTRYPOINT ["java", "", "HelloWorld"]
