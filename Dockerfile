FROM jenkinsci/ssh-slave
MAINTAINER dreambox "https://github.com/gitdreambox"
# Update sources
ENV deb_sources http://mirrors.163.com
RUN echo "deb $deb_sources/debian/ jessie main non-free contrib" > /etc/apt/sources.list &&\
	echo "deb $deb_sources/debian/ jessie-updates main non-free contrib" >> /etc/apt/sources.list &&\
	echo "deb $deb_sources/debian/ jessie-backports main non-free contrib" >> /etc/apt/sources.list &&\
	echo "deb $deb_sources/debian-security/ jessie/updates main non-free contrib" >> /etc/apt/sources.list
	
RUN apt-get update
RUN apt-get install -y python git libc6-dev-i386 make 
ADD xtensa-lx106-elf.tar.bz2 /opt/
ENV PATH $PATH:/opt/xtensa-lx106-elf/bin/
RUN sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config &&\
	sed -i "s/PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config &&\
	echo "root:root" | chpasswd

	

