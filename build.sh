#!/bin/bash
docker stop mynginxcontainer
docker rm mynginxcontainer
docker build -t nginximage .
docker run -d --name mynginxcontainer -p 80:80 nginximage
