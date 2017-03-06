FROM	python:3.5.2
MAINTAINER dreambox "https://github.com/gitdreambox"

# Set username/password login as a default
# public authentication will be enabled with AUTHORIZED_KEY ENV
ENV ROOT_PWD default
ENV AUTHORIZED_KEY none

# update sources
RUN echo "deb http://mirrors.163.com/debian/ jessie main non-free contrib" > /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/debian/ jessie-updates main non-free contrib" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/debian/ jessie-backports main non-free contrib" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/debian-security/ jessie/updates main non-free contrib" >> /etc/apt/sources.list

# Install openssh-server
RUN apt-get update
RUN apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd

# Configure sshd.conf
## For username/password login
RUN sed -i "s/PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config

# Install app
RUN git clone https://github.com/marcgibbons/django-rest-swagger
RUN pip install -r /django-rest-swagger/requirements.txt -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
WORKDIR /django-rest-swagger/example_app
ENTRYPOINT bash -c "python manage.py migrate --noinput && python manage.py loaddata users && python manage.py runserver 0.0.0.0:8000"

# Expose 22 for SSH access
EXPOSE 22

COPY start.sh /start.sh
CMD ["./start.sh", "-bash"]

