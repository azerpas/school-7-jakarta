#!/bin/sh
mvn clean package && docker build -t com.azerpas/tp2 .
docker rm -f tp2 || true && docker run -d -p 9080:9080 -p 9443:9443 --name tp2 com.azerpas/tp2