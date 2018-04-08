FROM java:8-jre
RUN bash -c "ls"
COPY *.class /opt/app/
WORKDIR /opt/app
CMD ["java", "HelloWorld"]
