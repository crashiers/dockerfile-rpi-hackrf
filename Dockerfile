# Designed for use in Docker running on a RaspberryPi
#
# Installs HackRF tools. I.E. hackrf_info
# https://github.com/mossmann/hackrf/wiki/libHackRF-API
#
# Run container with the command: docker run -it --privileged --name hackrf -v /dev/bus/usb:/dev/bus/usb barrymarkgee/hackrf

FROM armhf/ubuntu

MAINTAINER Barry Gee

ENTRYPOINT exec /bin/bash

# Install HackRF tools
RUN apt-get update && apt-get install -y \
                                      hackrf \
                                      libhackrf-dev \
                                      libhackrf0
