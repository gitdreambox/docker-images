FROM jenkinsci/ssh-slave
MAINTAINER dreambox "https://github.com/gitdreambox"

RUN apt-get update
RUN apt-get install -y libc6-dev-i386 make python
ADD xtensa-lx106-elf.tar.bz2 /opt/
ENV PATH $PATH:/opt/xtensa-lx106-elf/bin/
VOLUME /build
WORKDIR /build

