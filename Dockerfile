FROM gradle:alpine 
USER root

ENV GOROOT="/go"

RUN apk update; \
	apk add curl; \
	apk clean cache; \
	curl -o /tmp/go.tar.gz https://dl.google.com/go/go1.10.2.linux-amd64.tar.gz; \
    mkdir -p /go; \
	tar -zxvf /tmp/go.tar.gz -C /go --strip-components=1;
