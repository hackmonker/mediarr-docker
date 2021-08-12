FROM alpine:latest

RUN apk add --no-cache wget
RUN wget -qO - https://api.github.com/repos/l3uddz/mediarr/releases/latest  \
      | grep browser_download_url \
      | grep linux_amd64 \
      | cut -d  '"' -f 4 \
      | wget -cqi - -O mediarr

ENTRYPOINT ["./mediarr"]
