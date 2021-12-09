@echo off
call mvn clean package
call docker build -t com.azerpas/tp2 .
call docker rm -f tp2
call docker run -d -p 9080:9080 -p 9443:9443 --name tp2 com.azerpas/tp2