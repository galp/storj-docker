FROM node:7

RUN npm install -g storj
RUN apt-get update && apt-get -y install git python build-essential
RUN npm install --global storjshare-daemon

EXPOSE 4000 4001 4002 4003
ENTRYPOINT ["/usr/local/bin/storjshare-daemon"]
CMD ["-F"]
VOLUME /data

