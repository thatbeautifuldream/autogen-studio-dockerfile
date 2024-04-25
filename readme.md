# Autogen Studio Docker Image

This repository contains a dockerfile which can be used to build a docker image for the Autogen Studio. The docker image can be used to run the Autogen Studio in a docker container.

## Docker compose does the building and deployment of the image

The docker-compose.yml file contains the configuration for building the docker image and running the docker container. The docker-compose.yml file contains the following services:

1. **autogenstudio**: This service builds the docker image for the Autogen Studio and runs the docker container.

You just need to run the following command to build the docker image and run the docker container:

```bash
docker-compose up
```

Add --detach to run the container in the background:

```bash
docker-compose up --detach
```

To force build the container, use this command:

```bash
docker-compose up --build --force-recreate
```

`--build`: build images before starting containers.

`--force-recreate`: Recreate containers even if their configuration and image haven't changed.

`--build` is a straightforward and it will create the docker images before starting the containers. The `--force-recreate` flag will stop the currently running containers forcefully and spin up all the containers again even if you do not have changed anything into it's configuration. So, if there are any changes, those will be picked-up into the newly created containers while preserving the state of volumes. The counter to this is --no-recreate to keep the containers in their existing state and it will not consider the respective changes into the configuration.

To stop the container, run the following command:

```bash
docker-compose down
```
