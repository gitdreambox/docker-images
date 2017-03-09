#!/bin/bash
#docker build --no-cache -t esp .
docker build -t slave-jnlp-esp .
#docker run --rm -it -v $PWD/:/home/jenkins -e JENKINS_SLAVE_SSH_PUBKEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDgeJRcbxt83hd1dP4XbuOkIZpjAgS6h6GiYqpU+CDrZI8M7r2cyOIEGU8uLzu4Rl/z+vRhy7125bMkJNbag37+kTfum5ddGbMNf/p+QJiw3G6cnUAV3uuBUoD2udo3ex09Lqk77tcZcHpQWGxYky3iKZu/JP0dL/PaE+Xpn6/1XG+AfsxyMChls1RuNjLU1J0Wld36/pTpe8zuo07D8OWdzI+gWSeUmJKxI3r5FCNCO7WGZ2Gk1WS6XWbBZBsLH03yERf6OKqciPPJtsxAttyudSvv6TiQnHtFPj1WM6RPvq9XenxYRsABn3DVB55PP8rkzzila6PSfM0KT1wW5Rw7" esp /bin/bash
#docker run -d -P -v $PWD/:/home/jenkins -e JENKINS_SLAVE_SSH_PUBKEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDgeJRcbxt83hd1dP4XbuOkIZpjAgS6h6GiYqpU+CDrZI8M7r2cyOIEGU8uLzu4Rl/z+vRhy7125bMkJNbag37+kTfum5ddGbMNf/p+QJiw3G6cnUAV3uuBUoD2udo3ex09Lqk77tcZcHpQWGxYky3iKZu/JP0dL/PaE+Xpn6/1XG+AfsxyMChls1RuNjLU1J0Wld36/pTpe8zuo07D8OWdzI+gWSeUmJKxI3r5FCNCO7WGZ2Gk1WS6XWbBZBsLH03yERf6OKqciPPJtsxAttyudSvv6TiQnHtFPj1WM6RPvq9XenxYRsABn3DVB55PP8rkzzila6PSfM0KT1wW5Rw7" esp &&  docker ps -a |grep esp
#docker run jenkinsci/jnlp-slave -url http://jenkins-server:port <secret> <slave name>
#docker run --rm -it --device /dev/ttyUSB0:/dev/ttyUSB0:rwm slave-jnlp-esp /bin/bash
#docker run --rm -it --device /dev/ttyUSB0:/dev/ttyUSB0:rwm slave-jnlp-esp -url http://120.77.154.214:8080 11692d89e6e3a15f9a0da6ccc8bfcadd8ef927a19717b5d9b9964b3ce28c3fe3 slave-jnlp-esp
docker run --device /dev/ttyUSB0:/dev/ttyUSB0:rwm -d slave-jnlp-esp -url http://120.77.154.214:8080 11692d89e6e3a15f9a0da6ccc8bfcadd8ef927a19717b5d9b9964b3ce28c3fe3 slave-jnlp-esp