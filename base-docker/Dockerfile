#start from the latest Ubuntu release
FROM ubuntu:latest

#switch to the root user
#USER root

#run apt update and upgrade to make sure we're on the latest
RUN apt update
RUN apt -y upgrade

#install basic linux components on base operating system
RUN apt install -y curl
RUN apt install -y dirmngr
RUN apt install -y apt-transport-https
RUN apt install -y lsb-release
RUN apt install -y ca-certificates
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt install -y gcc
RUN apt install -y python3-pip
RUN apt install -y git

#Upgrade pip installation
RUN pip3 install --upgrade pip