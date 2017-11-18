FROM paperinik/rpi-node:latest

MAINTAINER Bruno Cardoso Cantisano <bruno.cantisano@gmail.com>

LABEL version latest
LABEL description Meteor container for Raspberry Pi

RUN apt-get update && apt-get install python make g++ git wget \
    && apt-get purge --auto-remove wget \
    && rm -rf /var/lib/apt/lists/* \
    && git clone --depth 1 https://github.com/4commerce-technologies-AG/meteor 

#RUN /nodejs_apps/meteor/meteor -v 
#    && /nodejs_apps/meteor/dev_bundle/bin/npm install 

VOLUME /var/log/

EXPOSE 3000
