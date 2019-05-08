FROM ubuntu:latest

RUN apt-get -y update && apt-get -y upgrade && apt-get -y install openjdk-8-jdk x11-xserver-utils mesa-utils

COPY ./FTB_Launcher.jar /FTB_Launcher.jar

CMD java -jar ./FTB_Launcher.jar
