FROM golang:alpine

RUN apk update \
&& apk upgrade \
&& apk add docker glide \
&& rm -rf /var/cache/apk/*