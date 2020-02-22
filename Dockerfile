FROM nodered/node-red:1.0.3-4-12-minimal-arm32v6

USER root

#RUN apk add --no-cache --update make gcc g++ python linux-headers udev

RUN apk add --no-cache gcc musl-dev linux-headers python py-setuptools python2-dev jpeg-dev zlib-dev

RUN apk update && apk add py-pip
RUN pip install -U pip
RUN pip install Pillow

RUN git clone https://github.com/rm-hull/max7219.git
RUN ls -la && cd max7219 && ls -la && python setup.py install
#RUN apk --no-cache --update add build-base

#RUN npm -g install npm

#RUN npm install --save bindings
#RUN npm install node-gyp spi max7219-matrix

# xbee-api node-red-contrib-xbee node-red-contrib-telegrambot node-red-contrib-python-function node-red-node-twitter \
# node-red-contrib-function-npm node-red-contrib-ibm-watson-iot node-red-contrib-play-audio #max7219-matrix 

COPY ./config/settings.js /data/
