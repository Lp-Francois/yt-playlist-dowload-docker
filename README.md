# yt-playlist-dowload-docker

A docker solution to download audio from youtube playlist

## Getting started

Make sure to have docker installed on your host, then clone the repo and run those commands inside the yt-playlist-dowload-docker folder.

```
docker build -t yt .

docker run -it --name yt -v $(pwd)/output:/output yt

# docker rm {container_id}
```
