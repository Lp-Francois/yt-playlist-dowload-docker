FROM alpine:3.10

RUN apk add python \ 
py-pip \
curl \
ffmpeg \
cpio

RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
chmod a+rx /usr/local/bin/youtube-dl

COPY script.sh /

RUN chmod +x script.sh

ENTRYPOINT ["./script.sh"]
