FROM maven:alpine as maven-built
LABEL maintainer="Lucas Reeh <lr86gm@gmail.com>" author="Lucas Reeh"
WORKDIR /usr/src/app
COPY pom.xml .
RUN mvn -B -e -C -T 1C org.apache.maven.plugins:maven-dependency-plugin:3.0.2:go-offline
COPY . .
RUN mvn -B -e -o -T 1C -P prod clean install

FROM payara/micro
COPY --from=maven-built ./usr/src/app/target/payara-micro-rest-template-1.0-SNAPSHOT.war $DEPLOY_DIR