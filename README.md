# myjenkins

This repo contains the Docker related files to run Jenkins with blueocean.<br/>
The image also installs a docker client inside the jenkins container which uses the host docker socket. (refer docker-compose.yml)

## Usage

To build the image from the Dockerfile<br/>
```docker build -t myjenkins .```

To start the jenkins container<br/>
```docker-compose up -d```

The image is also pushed to docker hub at soumitra003/myjenkins. You can update the `docker-compose.yml` to use that image.
```yml
# docker-compose.yml
version: '3'
services:
  jenkins:
    container_name: 'myjenkins'
    image: 'soumitra003/myjenkins'
    build:
      context: .
      dockerfile: Dockerfile
```
