# Autogen Studio Docker Image

This repository contains a dockerfile which can be used to build a docker image for the Autogen Studio. The docker image can be used to run the Autogen Studio in a docker container.

## Docker compose does the building and deployment of the image

The docker-compose.yml file contains the configuration for building the docker image and running the docker container. The docker-compose.yml file contains the following services:

1. **autogen-studio**: This service builds the docker image for the Autogen Studio and runs the docker container.

You just need to run the following command to build the docker image and run the docker container:

```bash
docker-compose up
```

Add --detach to run the container in the background:

```bash
docker-compose up --detach
```

To stop the container, run the following command:

```bash
docker-compose down
```
