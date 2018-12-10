FROM golang:1.11.2-alpine AS build
RUN apk add --no-cache git
RUN go get github.com/jsha/minica

FROM alpine:3.8
COPY --from=build /go/bin/minica /usr/local/bin/minica
RUN mkdir /output
WORKDIR /output
ENTRYPOINT ["minica"]
