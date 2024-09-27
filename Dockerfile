FROM openjdk:17-jdk-slim

#viene utilizzato per installare il pacchetto curl all'interno di un'immagine Docker basata su una distribuzione Debian o Ubuntu (o su altre distribuzioni che utilizzano il gestore pacchetti APT).
RUN apt-get update && apt-get install -y curl

#JAR DI CONFIGSERVER
COPY target/configserver-0.0.1-SNAPSHOT.jar configserver-0.0.1-SNAPSHOT.jar

#APPENA IL CONTAINER PARTE
ENTRYPOINT ["java", "-jar", "configserver-0.0.1-SNAPSHOT.jar"]