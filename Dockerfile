FROM nodered/node-red:1.0.3-4-12-minimal-arm32v6

USER root

RUN apk add --no-cache gcc musl-dev linux-headers python py-setuptools python2-dev jpeg-dev zlib-dev

RUN apk update && apk add py-pip
RUN pip install -U pip
RUN pip install Pillow

RUN git clone https://github.com/rm-hull/max7219.git
RUN ls -la && cd max7219 && ls -la && python setup.py install

RUN npm install node-red-contrib-sunevents node-red-contrib-simple-message-queue node-red-contrib-python-function node-red-contrib-telegrambot node-red-node-twitter

COPY ./config/settings.js /data/
