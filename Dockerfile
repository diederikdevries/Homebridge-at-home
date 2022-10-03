#FROM ubuntu:22.10
FROM alpine:3.14
RUN apk add --no-cache nodejs npm tmux

#ENV FOO=/bar
#WORKDIR ${FOO}   # WORKDIR /bar
#ADD . $FOO       # ADD . /bar
#COPY \$FOO /quux # COPY $FOO /quux

#RUN apt update
#RUN apt dist-upgrade

RUN npm config set registry https://registry.npmjs.org/
RUN npm install -g node-gyp homebridge homebridge-vera 
#RUN npm install -g homebridge
#RUN npm install -g homebridge-vera

ADD config.json /root/.homebridge/
CMD tmux -c homebridge


