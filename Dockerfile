FROM ubuntu:latest

RUN apt update; apt install sysstat -y

COPY ./usr/bin/* /usr/bin/
