makeaweatherboard
=================

### About

docker run -d -p 1880:1880 --name weatherboardnodered --group-add dialout --device=/dev/spidev0.0 --device=/dev/spidev0.1 --device=/dev/serial0 --user=root --restart=always -e NODE_OPTIONS="--max_old_space_size=256" --log-opt max-file=2 --log-opt max-size=2k -e TZ="Europe/Rome" braghettos/makeawheaterboard:latest
