FROM gradle:jre-alpine
USER root

ENV GOROOT="/go"
ENV GOPATH="/gopath"
ENV PATH=$PATH:$GOROOT/bin

RUN apk update; \
    apk add curl git openssh; \
    apk cache clean; \
    curl -o /tmp/go.tar.gz https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz; \
    mkdir -p /go; \
    mkdir -p /gopath/src; \
    tar -zxvf /tmp/go.tar.gz -C /go --strip-components=1; rm -f /tmp/go.tar.gz;\
    chown 777 -R /go; \
    chown 777 -R /gopath;
