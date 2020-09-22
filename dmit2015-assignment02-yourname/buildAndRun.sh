#!/bin/sh
if [ $(docker ps -a -f name=dmit2015-assignment02-yourname | grep -w dmit2015-assignment02-yourname | wc -l) -eq 1 ]; then
  docker rm -f dmit2015-assignment02-yourname
fi
mvn clean package && docker build -t ca.nait.dmit/dmit2015-assignment02-yourname .
docker run -d -p 9080:9080 -p 9443:9443 --name dmit2015-assignment02-yourname ca.nait.dmit/dmit2015-assignment02-yourname
