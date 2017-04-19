#!/bin/bash

docker run --rm -it \
           -v "$PWD":/app \
           -v "$PWD"/data:/app/data \
	         -v "$PWD"/supervisord.conf:/etc/supervisord.conf \
           --network host \
           --name mu-docker-watcher \
           -e MODE=development \
           mu-docker-watcher
