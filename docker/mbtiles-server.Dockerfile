FROM ubuntu:18.04

RUN apt-get update \
  && apt-get -y upgrade \
  && apt-get -y install git build-essential python nodejs npm

RUN mkdir -p /mbtiles-server
RUN git clone https://github.com/Anagraph/mbtiles-server.git /mbtiles-server
WORKDIR /mbtiles-server

RUN npm install

ENTRYPOINT ["node", "index.js"]

#CMD /bin/bash
