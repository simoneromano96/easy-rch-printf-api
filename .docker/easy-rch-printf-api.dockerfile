FROM golang as build

WORKDIR /easy-rch-printf-api
COPY . .

RUN go build ./src/*.go

CMD ["/easy-rch-printf-api/main"]

FROM alpine as production

COPY --from=build /easy-rch-printf-api/main /easy-rch-printf-api

CMD ["/easy-rch-printf-api"]
