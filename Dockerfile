FROM jenkinsci/ssh-slave
MAINTAINER dreambox "https://github.com/gitdreambox"

ENV JENKINS_SLAVE_SSH_PUBKEY "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAIEAtW2HbIyFyr7Mt5D7iTpsw8aju14kexLQ0zinKab/vh+VNvTZ9DFrOO/RNRm/RDGpHPkXv7N6/8d5ekX8sKkqBgbCAuLatMHD+Eumakaom6n4E9XvRn76j6G6NzorAZihOw51MWtqwnHJojnISNJlcrmcCGWcbIK5v4VYEmMyJ1c="

# Update sources
ENV deb_sources http://mirrors.163.com
RUN echo "deb $deb_sources/debian/ jessie main non-free contrib" > /etc/apt/sources.list &&\
	echo "deb $deb_sources/debian/ jessie-updates main non-free contrib" >> /etc/apt/sources.list &&\
	echo "deb $deb_sources/debian/ jessie-backports main non-free contrib" >> /etc/apt/sources.list &&\
	echo "deb $deb_sources/debian-security/ jessie/updates main non-free contrib" >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y libc6-dev-i386
RUN apt-get install -y make
RUN apt-get install -y python
ADD xtensa-lx106-elf.tar.bz2 /opt/
ENV PATH $PATH:/opt/xtensa-lx106-elf/bin/
VOLUME /build
WORKDIR /build

