ODDB Crawler in a docker container

# How to run the container
If you dont already have a token contact hex on the eye

if you are running your own ODDB server you can set the api url using  `-e URL=<URL>` 

```
docker run -it \
  -d \
  --name oddb-crawler \
  -e TOKEN=<TOKEN> \
  --mount source=oddb-crawler,target=/go \
  --restart always \
  pascaldulieu/oddb-crawler
```
