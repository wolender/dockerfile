FROM openjdk:17
RUN mkdir /usr/src/petclinic
WORKDIR /usr/src/petclinic
COPY ./spring-petclinic-${RELEASE_VERSION}.jar /usr/src/petclinic/
RUN chmod 777 *.jar
EXPOSE 80
CMD ["java","-jar","spring-petclinic-${RELEASE_VERSION}.jar"]

