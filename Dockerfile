FROM gradle:alpine 
USER root

ENV GOROOT="/go"
ENV PATH=$PATH:$GOROOT/bin

RUN apk update; \
	apk add curl git openssh; \
	apk cache clean; \
	curl -o /tmp/go.tar.gz https://dl.google.com/go/go1.10.2.linux-amd64.tar.gz; \
    mkdir -p /go; \
	tar -zxvf /tmp/go.tar.gz -C /go --strip-components=1; \
	mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2;
