#!/bin/sh
sudo pm2 stop cncjs
platformio run -e rambo --target upload -v
sudo pm2 start cncjs
cp .pioenvs/rambo/firmware.hex bin/
