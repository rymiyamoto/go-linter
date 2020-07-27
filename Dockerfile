FROM rymiyamoto/go-imagemagick7:latest
RUN wget -O- -nv https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.29.0
RUN mkdir /go/src/work
WORKDIR /go/src/work
COPY . /go/src/work
CMD ["golangci-lint", "run"]
