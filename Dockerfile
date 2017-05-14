FROM ubuntu:16.04
MAINTAINER dreambox "https://github.com/gitdreambox"

# update aliyun sources
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse" >> /etc/apt/sources.list

RUN apt-get update 
RUN apt-get install -y libc6-dev-i386 make python python-pip git
RUN pip install esptool
ADD xtensa-lx106-elf.tar.bz2 /opt/
#ENV PATH $PATH:/opt/xtensa-lx106-elf/bin/
RUN echo "export PATH=/opt/xtensa-lx106-elf/bin/:$PATH" >> /etc/bash.bashrc
VOLUME /build
WORKDIR /build

CMD bin/bash

