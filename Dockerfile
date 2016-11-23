FROM cloudfoundry/cflinuxfs2

RUN sudo apt-get update 
ENV GOPATH ${HOME}/work
RUN curl -L https://storage.googleapis.com/golang/go1.5.1.darwin-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.5.1.darwin-amd64.tar.gzip
ENV PATH ${PATH}:/usr/local/go
RUN go get github.com/kahing/goofys
RUN go install github.com/kahing/goofys

CMD echo "goofys built"