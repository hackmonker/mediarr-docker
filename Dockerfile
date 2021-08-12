FROM alpine:latest

RUN apt-get install -y wget \  
      wget -qO - https://api.github.com/repos/l3uddz/mediarr/releases/latest  \
      | grep browser_download_url \
      | grep linux_amd64 \
      | cut -d  '"' -f 4 \
      | wget -cqi - -O mediarr
RUN chmod +x mediarr

ENTRYPOINT ["./mediarr"]
