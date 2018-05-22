FROM golang:alpine

RUN apk update \
&& apk add glide \
&& git \
&& rm -rf /var/cache/apk/*