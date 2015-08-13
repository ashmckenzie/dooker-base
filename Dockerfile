FROM gliderlabs/alpine:latest
MAINTAINER ash@the-rebellion.net

RUN apk --update add build-base openssl-dev bash coreutils
RUN mkdir /usr/local/sbin
RUN wget https://github.com/chrismytton/shoreman/raw/master/shoreman.sh -O /usr/local/sbin/shoreman
ADD start /start
RUN chmod 755 /start /usr/local/sbin/shoreman
