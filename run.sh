#!/bin/sh

docker build --tag fantasytrack_gateway .
docker run -it --publish "7071:7071" \
    --env APPSERVER_HOST="localhost" \
    --env APPSERVER_PORT="8085" \
	fantasytrack_gateway
