# myjenkins

This repo contains the Docker related files to run Jenkins with blueocean and other recommended plugins pre-installed.<br/>
The image also installs a docker client inside the jenkins container which uses the host docker socket. (refer docker-compose.yml)

# Usage

## Running Jenkins

To start the jenkins container<br/>
```docker-compose up -d --build```

The image is also pushed to docker hub at soumitra003/myjenkins. You can update the `docker-compose.yml` to use that image and run the above command without the `--build` argument.
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

## User setup

Once the container has started, visit `http://localhost:8080` on your browser to access Jenkins.<br/>
On your first login, Jenkins will prompt for the admin password. To get the password run the following command <br/>
```docker logs myjenkins``` 

You should be able to see the password in the returned logs.<br/>
Follow the steps to set up an admin user credential.

Enjoy!



