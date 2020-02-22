FROM nodered/node-red:latest

USER root

RUN npm install node-red-node-serialport xbee-api node-red-contrib-xbee node-red-contrib-telegrambot node-red-contrib-python-function node-red-node-twitter node-red-contrib-function
-npm node-red-contrib-ibm-watson-iot node-red-contrib-play-audio

COPY ./config/settings.js /data/
