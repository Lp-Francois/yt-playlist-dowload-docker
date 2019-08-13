# yt-playlist-dowload-docker

A docker solution to download audio from youtube playlist, using youtube-dl

## Getting started

Make sure to have docker installed on your host, then clone the repo and run those commands inside the yt-playlist-dowload-docker folder.

```
# build the image from the Dockerfile
docker build -t yt .

# Run the container, which download audios, archive then put it inside the ./output/ folder on your host machine.
docker run -it --name yt -v $(pwd)/output:/output yt [HERE_PASTE_THE_URL__https://youtube?list=PL_weird_hash]

# docker rm {container_id}
```

## To-do

- Change ubuntu image with alpine (lighter solution)
