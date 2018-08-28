FROM gradle
USER root

ENV GOROOT="/go"
ENV GOPATH="/gopath"
ENV PATH=$PATH:$GOROOT/bin

RUN curl -o /tmp/go.tar.gz https://dl.google.com/go/go1.11.darwin-amd64.pkg; \
    mkdir -p /go; \
    mkdir -p /gopath/src; \
    tar -zxvf /tmp/go.tar.gz -C /go --strip-components=1; rm -f /tmp/go.tar.gz;\
    chmod 777 -R /go; \
    chmod 777 -R /gopath;
