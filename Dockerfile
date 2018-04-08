FROM java:8-jre
COPY *.class /opt/app/
WORKDIR /opt/app
CMD ["java", "HelloWorld"]
