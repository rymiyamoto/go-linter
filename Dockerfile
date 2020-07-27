FROM rymiyamoto/go-imagemagick7:latest
RUN apk add --update --no-cache ca-certificates git
RUN wget -O- -nv https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.29.0
RUN mkdir /go/src/work
WORKDIR /go/src/work
COPY exec.sh /exec.sh
RUN chmod 744 /exec.sh
CMD ["/exec.sh"]
