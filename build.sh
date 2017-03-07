#!/bin/bash
#docker build --no-cache -t esp .
docker build -t esp .
#docker run --rm -it -e JENKINS_SLAVE_SSH_PUBKEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDgeJRcbxt83hd1dP4XbuOkIZpjAgS6h6GiYqpU+CDrZI8M7r2cyOIEGU8uLzu4Rl/z+vRhy7125bMkJNbag37+kTfum5ddGbMNf/p+QJiw3G6cnUAV3uuBUoD2udo3ex09Lqk77tcZcHpQWGxYky3iKZu/JP0dL/PaE+Xpn6/1XG+AfsxyMChls1RuNjLU1J0Wld36/pTpe8zuo07D8OWdzI+gWSeUmJKxI3r5FCNCO7WGZ2Gk1WS6XWbBZBsLH03yERf6OKqciPPJtsxAttyudSvv6TiQnHtFPj1WM6RPvq9XenxYRsABn3DVB55PP8rkzzila6PSfM0KT1wW5Rw7" -v $PWD/:/build  esp /bin/bash
docker run -d -P -e JENKINS_SLAVE_SSH_PUBKEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDgeJRcbxt83hd1dP4XbuOkIZpjAgS6h6GiYqpU+CDrZI8M7r2cyOIEGU8uLzu4Rl/z+vRhy7125bMkJNbag37+kTfum5ddGbMNf/p+QJiw3G6cnUAV3uuBUoD2udo3ex09Lqk77tcZcHpQWGxYky3iKZu/JP0dL/PaE+Xpn6/1XG+AfsxyMChls1RuNjLU1J0Wld36/pTpe8zuo07D8OWdzI+gWSeUmJKxI3r5FCNCO7WGZ2Gk1WS6XWbBZBsLH03yERf6OKqciPPJtsxAttyudSvv6TiQnHtFPj1WM6RPvq9XenxYRsABn3DVB55PP8rkzzila6PSfM0KT1wW5Rw7" -v $PWD/:/build  esp