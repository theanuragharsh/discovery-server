FROM adoptopenjdk:11-jre-hotspot
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} discovery-server.jar
EXPOSE 8070
CMD ["java", "-jar", "/discovery-server.jar"]


# build and run docker image
#1. cd /mnt/d/Bank\ Service/customer-service
#2. docker build -t customer-service .
#3. docker run -p 8082:8082 customer-service