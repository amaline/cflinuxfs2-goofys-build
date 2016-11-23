FROM cloudfoundry/cflinuxfs2

RUN sudo apt-get update && sudo apt-get install -y golang
ENV GOPATH ${HOME}/work
RUN go get github.com/kahing/goofys
RUN go install github.com/kahing/goofys

CMD echo "goofys built"