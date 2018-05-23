FROM golang:alpine

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \ 
&& apk update \
&& apk upgrade \
&& apk add git curl \
&& mkdir -p $GOPATH/src/github.com/Masterminds/glide \
&& git clone https://github.com/Masterminds/glide.git $GOPATH/src/github.com/Masterminds/glide \
&& cd $GOPATH/src/github.com/Masterminds/glide \
&& GOOS=linux go build -ldflags="-s -w" -o glide glide.go \
&& mv glide /usr/bin/ \
&& rm -rf $GOPATH/src/github.com/Masterminds \
&& cd ~ \
&& curl -O https://download.docker.com/linux/static/stable/x86_64/docker-18.03.1-ce.tgz \
&& tar -zxvf docker-18.03.1-ce.tgz docker/docker \
&& rm docker-18.03.1-ce.tgz \
&& mv docker/docker /usr/bin/ \
&& apk del curl \
&& rm -rf docker \
&& rm -rf /var/cache/apk/*