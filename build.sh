#!/bin/bash
docker build -t esp .
docker run --rm -it -v $PWD/:/build  esp /bin/bash