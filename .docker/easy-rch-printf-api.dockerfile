FROM golang

WORKDIR /easy-rch-printf-api
COPY . .

RUN go build ./src/*.go

CMD ["/easy-rch-printf-api/main"]
