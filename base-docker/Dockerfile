#start from the latest Ubuntu release
FROM ubuntu:latest

#switch to the root user
#USER root

ARG DEBIAN_FRONTEND=noninteractive

#run apt update and upgrade to make sure we're on the latest
RUN apt-get -y update
RUN apt-get -y upgrade

#install basic linux components on base operating system
RUN apt-get install -y curl dirmngr apt-transport-https lsb-release
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y ca-certificates flake8 nodejs gcc python3-pip git
RUN apt-get install -y libgl1-mesa-dev libgtk2.0-dev

#Upgrade pip installation
RUN pip3 install --upgrade pip