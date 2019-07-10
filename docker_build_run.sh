#!/usr/local/bin/bash

docker build . -t ch10-1553-es
docker run -it ch10-1553-es:latest  /bin/bash
