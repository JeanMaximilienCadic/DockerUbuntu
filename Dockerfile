FROM ubuntu:kinetic-20220830

RUN apt update; apt install sysstat git rsync wget curl -y

WORKDIR /tmp

RUN git clone https://github.com/JeanMaximilienCadic/DockerUbuntu
RUN rsync -avz /tmp/DockerUbuntu/usr/bin/* /usr/bin/

RUN rm -r /tmp/DockerUbuntu
