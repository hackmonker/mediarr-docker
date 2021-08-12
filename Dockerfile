FROM alpine:latest

RUN apt install -y wget \  
RUN wget -O mediarr https://github.com/l3uddz/mediarr/releases/download/v1.2.0/mediarr_v1.2.0_linux_amd64
RUN chmod +x mediarr

ENTRYPOINT ["./mediarr"]
