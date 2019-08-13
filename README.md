# yt-playlist-dowload-docker
A docker solution to download audio from youtube playlist

```
docker build -t yt .

docker run -it --name yt -v $(pwd)/output:/output yt

# docker rm {container_id}
```
