#!/bin/bash
docker build --no-cache -t esp .
#docker build -t esp .
#docker run --rm -it -e code=git@github.com:gitdreambox/ESP8266_RTOS_SDK.git -v $PWD/:/build  esp /bin/bash