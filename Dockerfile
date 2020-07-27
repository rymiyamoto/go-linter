FROM rymiyamoto/go-imagemagick7:latest
RUN apk add --update --no-cache ca-certificates git
RUN wget -O- -nv https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.29.0
ENV GO111MODULE on
RUN mkdir /go/src/work
WORKDIR /go/src/work
CMD ["golangci-lint", "run"]
