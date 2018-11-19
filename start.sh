#!/bin/sh
sed -i "s|^  token: *$|  token: $TOKEN|g" /go/config.yml && \
sed -i "s|^  url: http://od-db.mine.terorie.com/api*$|  url: $URL|g" /go/config.yml
/go/bin/od-database-crawler