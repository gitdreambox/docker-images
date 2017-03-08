FROM jenkinsci/ssh-slave
MAINTAINER dreambox "https://github.com/gitdreambox"

# Update sources
RUN echo "deb http://mirrors.aliyun.com/debian/ jessie main non-free contrib" > /etc/apt/sources.list &&\
	echo "deb http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib" >> /etc/apt/sources.list
		
RUN apt-get update && apt-get install -y libc6-dev-i386 make python git
ADD xtensa-lx106-elf.tar.bz2 /opt/
#ENV PATH $PATH:/opt/xtensa-lx106-elf/bin/
RUN echo "export PATH=/opt/xtensa-lx106-elf/bin/:$PATH" >> /etc/bash.bashrc
	
	
	

