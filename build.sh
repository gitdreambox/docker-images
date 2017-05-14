#!/bin/bash
#docker build --no-cache -t esp .
docker build -t esp .
#docker run --rm -it -v $PWD/:/build  esp /bin/bash
docker run --rm -it -v $PWD/:/build --device /dev/ttyUSB0:/dev/ttyUSB0:rwm esp /bin/bash
#esptool.py --port /dev/ttyUSB0 --baud 1500000 write_flash 0x00000 ./bin/boot_v1.6.bin 0x01000 ./bin/upgrade/user1.4096.new.6.bin 0x3fc000 ./bin/esp_init_data_default.bin 0x3fe000 ./bin/blank.bin
