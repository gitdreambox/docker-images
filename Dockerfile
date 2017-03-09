FROM jenkinsci/jnlp-slave
MAINTAINER dreambox "https://github.com/gitdreambox"
USER root
# Update sources
RUN echo "deb http://mirrors.aliyun.com/debian/ jessie main non-free contrib" > /etc/apt/sources.list &&\
	echo "deb http://mirrors.aliyun.com/debian/ jessie-proposed-updates main non-free contrib" >> /etc/apt/sources.list

RUN apt-get update && apt-get install -y libc6-dev-i386 make python python-pip git 
RUN pip install esptool
ADD xtensa-lx106-elf.tar.bz2 /opt/
#ENV PATH $PATH:/opt/xtensa-lx106-elf/bin/
RUN echo "export PATH=/opt/xtensa-lx106-elf/bin/:$PATH" >> /etc/bash.bashrc
#USER jenkins
#ENTRYPOINT ["chmod 777 /dev/ttyUSB0"]
	
	
	

