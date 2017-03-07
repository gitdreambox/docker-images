#!/bin/bash
#docker build --no-cache -t esp .
docker build -t esp .
#docker run --rm -it -e JENKINS_SLAVE_SSH_PUBKEY="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAIEAkwtkaDdi/Sk+nVTB+PPydHdMBkMLga9EnQdeR6piD7vj9nQfjZxnJaKdcosF1uaOn6JMjXbB7xbExqT0zWv48/5PAiMRRq95eYB2w57V9z+DrBlANljCF/Gbn/WQl1EmewFHMqe3sYYUOO6G3Ewyx3Vl1yEG+kerHjujMwucYCE=" -v $PWD/:/build  esp /bin/bash
docker run -d -P -e JENKINS_SLAVE_SSH_PUBKEY="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAIEAkwtkaDdi/Sk+nVTB+PPydHdMBkMLga9EnQdeR6piD7vj9nQfjZxnJaKdcosF1uaOn6JMjXbB7xbExqT0zWv48/5PAiMRRq95eYB2w57V9z+DrBlANljCF/Gbn/WQl1EmewFHMqe3sYYUOO6G3Ewyx3Vl1yEG+kerHjujMwucYCE=" -v $PWD/:/build  esp