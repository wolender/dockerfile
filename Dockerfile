FROM openjdk:17
ARG JAR_VERSION
RUN mkdir /usr/src/petclinic
WORKDIR /usr/src/petclinic
COPY ./spring-petclinic-${JAR_VERSION}.jar /usr/src/petclinic/
RUN chmod 777 *.jar
EXPOSE 80
CMD ["java","-jar","spring-petclinic-${JAR_VERSION}.jar"]

