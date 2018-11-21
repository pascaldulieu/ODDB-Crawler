FROM golang:alpine
ENV TOKEN= \
	URL=https://od-db.the-eye.eu/api
ADD start.sh /start.sh
RUN apk add git && \
	wget -P /go/ https://raw.githubusercontent.com/terorie/od-database-crawler/master/config.yml && \
	go get github.com/terorie/od-database-crawler && \
	rm -r /go/src && \
	chmod +x /start.sh && \
	cat /go/config.yml
VOLUME [ "/go" ]
ENTRYPOINT [ "/start.sh" ]