FROM openjdk:latest
EXPOSE 8080
RUN mkdir /opt/application
ARG VERSION
ENV VERSION=$VERSION
COPY ./build/libs/gs-spring-boot-${VERSION}.jar /opt/application
CMD ["java","-jar","/opt/application/gs-spring-boot-0.1.0.jar"]