FROM openjdk:17
ENV VER= ${RELEASE_VERSION}
RUN mkdir /usr/src/petclinic
WORKDIR /usr/src/petclinic
COPY ./spring-petclinic-${VER}.jar /usr/src/petclinic/
RUN chmod 777 *.jar
EXPOSE 80
CMD ["java","-jar","spring-petclinic-${VER}.jar"]

