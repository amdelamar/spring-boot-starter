FROM openjdk:8-jre-alpine

# Copy app to new directory
RUN mkdir -p /usr/spring-boot
COPY build/libs/spring-boot-starter-0.1.0.jar /usr/spring-boot

# Work out of the directory
WORKDIR /usr/spring-boot

# Expose http ports
EXPOSE 8080 8443

# Start java application
CMD ["java","-jar","spring-boot-starter-0.1.0.jar"]
