FROM ubuntu:16.04
MAINTAINER dreambox "https://github.com/gitdreambox"

# update aliyun sources
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse" >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y git libc6-dev-i386 make python

ADD xtensa-lx106-elf.tar.bz2 /opt/
ENV PATH $PATH:/opt/xtensa-lx106-elf/bin/
VOLUME /build
WORKDIR /build

CMD bin/bash

