FROM cloudfoundry/cflinuxfs2

RUN sudo apt-get update 
ENV GOPATH ${HOME}/work
RUN curl -LO https://storage.googleapis.com/golang/go1.5.1.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.5.1.linux-amd64.tar.gz
RUN PATH=${PATH}:/usr/local/go/bin go get github.com/kahing/goofys
RUN PATH=${PATH}:/usr/local/go/bin go install github.com/kahing/goofys

CMD echo "goofys built"