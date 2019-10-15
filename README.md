# myjenkins

This repo contains the Docker related files to run Jenkins with blueocean.<br/>
The image also installs a docker client inside the jenkins container which uses the host docker socket. (refer docker-compose.yml)

## Usage

To build the image from the Dockerfile
`docker build -t myjenkins .`

To start the jenkins container
`docker-compose up`

