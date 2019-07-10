#!/usr/local/bin/bash
docker build . -t ch10-1553-es
docker run -v `pwd`/data_sets/:/data_sets -i --log-driver=none -a stdin -a stdout -a stderr ch10-1553-es:latest idmp1553 -i $1 2>/dev/null|grep "Ch" | filebeat -c ./filebeat.yml -e run
