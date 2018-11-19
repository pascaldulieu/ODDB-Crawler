FROM golang:alpine
ENV TOKEN=00000000-0000-0000-00000-000000000000 \
	URL=https://od-db.the-eye.eu/api
RUN apk add git && \
	wget -P /go/ https://raw.githubusercontent.com/terorie/od-database-crawler/master/config.yml && \
	go get github.com/terorie/od-database-crawler && \
	sed -i "s|^  token: *$|  token: $TOKEN|g" /go/config.yml && \
	sed -i "s|^  url: http://od-db.mine.terorie.com/api*$|  url: $URL|g" /go/config.yml && \
	rm -r /go/src
VOLUME [ "/go" ]
CMD ["/go/bin/od-database-crawler"]