FROM golang:alpine

RUN apk update \
&& apk upgrade \
&& apk add git glide \
&& rm -rf /var/cache/apk/*