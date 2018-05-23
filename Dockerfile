FROM alpine:latest

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \ 
&& apk update \
&& apk upgrade \
&& apk add git docker glide \
&& rm -rf /var/cache/apk/*