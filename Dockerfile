FROM nodered/node-red:1.0.3-4-12-minimal-arm32v6

USER root

RUN apk add --update \
    python \
    python-dev \
    py-pip 

RUN npm install node-red-node-serialport

# xbee-api node-red-contrib-xbee node-red-contrib-telegrambot node-red-contrib-python-function node-red-node-twitter \
# node-red-contrib-function-npm node-red-contrib-ibm-watson-iot node-red-contrib-play-audio #max7219-matrix 

COPY ./config/settings.js /data/
