FROM golang:alpine

RUN apk update \
&& apk upgrade \
&& apk add git docker glide \
&& rm -rf /var/cache/apk/*