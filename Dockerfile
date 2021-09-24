FROM gcr.io/distroless/java-debian10:11
COPY scripts/Dpkg.java Dpkg.java
COPY ./target/*.jar /app/app.jar
RUN ["java", "Dpkg.java"]
USER 65534:65534
WORKDIR /app
ENTRYPOINT ["-Djava.security.egd=file:/dev/./urandom ./app.jar"]
