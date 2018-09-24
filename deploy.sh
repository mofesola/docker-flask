#!/usr/bin/env bash

VERSION="{$1}"

envsubst < deploy/app-deployment.tpl.yaml > deploy/app-deployment.yaml
envsubst < deploy/nginx-deployment.tpl.yaml > deploy/nginx-deployment.yaml

docker-compose build
docker tag mofesola/webserver mofesola/webserver:"${VERSION}"
docker tag mofesola/python-app mofesola/python-app:"${VERSION}"
docker push mofesola/webserver:"${VERSION}"
docker push mofesola/python-app:"${VERSION}"
kubectl apply -f deploy/