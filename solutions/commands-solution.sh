#!/bin/bash

docker run --rm --name postgresql-server -e POSTGRES_PASSWORD=pass -e POSTGRES_DB=eventregistration -e POSTGRES_USER=user -d postgres

docker build -t ifjmbur/dockerdemo ../example-webapp/ -f Dockerfile

docker run --rm --name web-server --expose 8080 -P -d ifjmbur/dockerdemo

docker ps