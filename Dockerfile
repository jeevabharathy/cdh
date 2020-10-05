#Download base image ubuntu 18.04
FROM ubuntu:18.04

# LABEL about the custom image
LABEL maintainer="jeeva.bharathy@insightdelivered.com"
LABEL version="0.1"
LABEL description="This is custom Docker Image for the CDH on Ubuntu 18.04"

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt update

COPY /opt  /opt
COPY /etc  /etc
COPY /lib  /lib
COPY /root  /root
COPY /run  /run
COPY /sys  /sys
COPY /tmp  /tmp
COPY /usr  /usr
COPY /var  /var


# Expose Port for the Application 
EXPOSE 80 8020 8022 8080 7180 8888 11000 50070 50075 2181 8088 19888 50030 8983 16000 8042 60010 60030 9090 8080 7077 10000
