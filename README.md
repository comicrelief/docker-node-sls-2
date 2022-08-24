# Docker Node Serverless v2

[![Docker Build](https://img.shields.io/docker/build/comicrelief/docker-node-sls-2.svg)](https://hub.docker.com/r/comicrelief/docker-node-sls-2)
[![License](https://img.shields.io/github/license/comicrelief/docker-node-sls.svg)](https://hub.docker.com/r/comicrelief/docker-node-sls-2)
[![Release](https://img.shields.io/github/release/comicrelief/docker-node-sls.svg)](https://hub.docker.com/r/comicrelief/docker-node-sls-2)

This is the docker image with Node 14 ready for use [Serverless](https://serverless.com) 2.x


## Updating image on Docker Hub

Log in Docker Hub. Your user must have write permissions to the `comicrelief` Docker Hub organisation.
```
docker login
```

Set a version number (typically incrementing the minor version on the previous release). Build the docker image locally and then push the built image to Docker Hub.
```
export VERSION=x.x.x
docker build -t comicrelief/docker-node-sls-2:$VERSION .
docker push comicrelief/docker-node-sls-2:$VERSION
```

To update the `latest` published tag of the image, manually create a tag using the `reference` printed out as part of the `docker build` command (run above). The output from that command should be in the format `Successfully built <reference>`.
```
docker tag <reference> comicrelief/docker-node-sls-2:latest
docker push comicrelief/docker-node-sls-2:latest
```
