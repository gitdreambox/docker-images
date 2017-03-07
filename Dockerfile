FROM jenkinsci/ssh-slave
MAINTAINER dreambox "https://github.com/gitdreambox"

ENV JENKINS_SLAVE_SSH_PUBKEY "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDgeJRcbxt83hd1dP4XbuOkIZpjAgS6h6GiYqpU+CDrZI8M7r2cyOIEGU8uLzu4Rl/z+vRhy7125bMkJNbag37+kTfum5ddGbMNf/p+QJiw3G6cnUAV3uuBUoD2udo3ex09Lqk77tcZcHpQWGxYky3iKZu/JP0dL/PaE+Xpn6/1XG+AfsxyMChls1RuNjLU1J0Wld36/pTpe8zuo07D8OWdzI+gWSeUmJKxI3r5FCNCO7WGZ2Gk1WS6XWbBZBsLH03yERf6OKqciPPJtsxAttyudSvv6TiQnHtFPj1WM6RPvq9XenxYRsABn3DVB55PP8rkzzila6PSfM0KT1wW5Rw7"

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

