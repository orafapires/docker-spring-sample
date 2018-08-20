FROM openjdk:latest
EXPOSE 8080
RUN mkdir /opt/application
ARG VERSION
ENV VERSION ${VERSION}
COPY ./build/libs/gs-spring-boot-${VERSION}.jar /opt/application
COPY ./run_application.sh /opt/application
WORKDIR /opt/application
CMD ["bash","-x","run_application.sh"]