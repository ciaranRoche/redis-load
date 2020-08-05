FROM golang:1.10
WORKDIR $GOPATH/src/github.com/ciaranRoche/redis-load
COPY . .
RUN go get -d -v ./...
RUN go install -v ./...
CMD ["redis-load"]