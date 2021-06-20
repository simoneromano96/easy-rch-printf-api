FROM golang as production

WORKDIR /build
COPY . .

RUN go build ./*.go

RUN ls -al

CMD ["/build/main"]

## FIXME: standard_init_linux.go:228: exec user process caused: no such file or directory
# FROM alpine as production
# 
# WORKDIR /app
# 
# RUN mkdir ./docs
# RUN mkdir ./environment
# 
# COPY --from=build /build/main /app/main
# COPY --from=build /build/docs/swagger.json /app/docs/swagger.json
# COPY --from=build /build/docs/swagger.yaml /app/docs/swagger.yaml
# COPY --from=build /build/environment/development.yaml /app/environment/development.yaml
# 
# CMD ["/app/main"]
