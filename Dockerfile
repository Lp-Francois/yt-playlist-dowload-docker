FROM ubuntu:18.04

RUN apt-get -y update && apt-get -y install python \
python-pip \
curl \
ffmpeg \
cpio

RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
chmod a+rx /usr/local/bin/youtube-dl

COPY script.sh /

RUN chmod +x script.sh

ENTRYPOINT ["./script.sh"]
