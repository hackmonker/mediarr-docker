FROM alpine:latest

RUN apk add --no-cache wget
RUN chmod +x mediarr

ENTRYPOINT ["./mediarr"]
