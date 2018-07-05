FROM golang:1.9.7-alpine3.7
RUN apk update && apk add git
RUN go get github.com/jsha/minica
RUN mkdir /output
WORKDIR /output
ENTRYPOINT ["minica"]