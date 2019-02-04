[ODDB Crawler](https://github.com/terorie/od-database-crawler) in a docker container

# How to run the container

You must fill out the token value otherwise the program will not work. if you do not have a token contact Hexahedr0n#1019 on the eye

```
docker run -it \
  -d \
  --name oddb-crawler \
  -e TOKEN=<TOKEN> \
  --mount source=oddb-crawler,target=/go \
  --restart always \
  pascaldulieu/oddb-crawler
```

# Env values

Below are the default ENV values. if you would like to change how the scraper runs add the below to your docker run command. for example `-e TASKS=50` which would lower the tasks from 100 to 50.

```
CONNECTIONS=4
DIAL_TIMEOUT=10s
JOB_BUFFER=5000
RESUME=72h0m0s
RETRIES=5
TASKS=100
TIMEOUT=30s
USER_AGENT="Mozilla/5.0 (X11; od-database-crawler) Gecko/20100101 Firefox/52.0"
COOLDOWN=30s
RECHECK=1s
SERVER_TIMEOUT=1m0s
TOKEN=
UPLOAD_CHUNK="1 MB"
UPLOAD_RETRIES=10
UPLOAD_RETRY_INTERVAL=30s
URL=https://od-db.the-eye.eu/api
```