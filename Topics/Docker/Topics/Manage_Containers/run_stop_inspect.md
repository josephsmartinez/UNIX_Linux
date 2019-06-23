# Essential Commands for Managing Docker Containers

## Sections

- Basic docker command
- Running Containers (settings)
  - Detached vs foreground
- Inpecting/Monitoring Containers (sh/bash)
  - Review docker PID
- Stopping/Rerunning Containers
- Networking

## Getting started with Docker, Docker images, and Docker containers

Basic commands
> docker version
> docker info
> docker --help
> docker container run
Old way
> docker run
> docker
NOTE: docker containers exit if there is no running application in the container.

## Running Containers

Helloworld
> docker container run hello-world

Example of running different types of images
> docker container run -it --name proxy nginx bash
> docker container run -it --ubuntu ubuntu

Launches an NginX server
> docker container run --publish 80:80 nginx
> curl http://localhost
> docker container ls
> docker container stop [container i.d.]

### Detached vs foreground

Foreground
> docker container run -a STDOUT --name mongo mongo

Detach the logs from shell window and Traffic is -> port 80 host -> 80 container
> docker container run --publish 80:80 --detach --name webhost nginx
> docker container logs webhost
Set the restart policy to restart automatically
> docker container run --publish 80:80 --restart unless-stopped --detach --name webhost nginx

## Inpecting/Monitoring Containers (sh/bash)

Process list on container  
> docker container top
Details of one container config  
> docker container inspect
Performance stats for all containers  
> docker container stats
Getting a Shell Inside a Container : No SSH  
Start new container interactively  
> docker container run -it
Run additional command in existing containers  
> docker container exec -it  
Note: Different Linux distro in containers

Enter a container that is runnning
> docker container exec -it mysql sh
> docker container exec -it mysql bash
> docker container exec -it mysql /bin/bash

Using alpine image
> docker container pull alpine
> docker container image
> docker container run -it alpine bash
***CAUTION: This will cause an error. Alpine is too small of
an image to handle a shell, however we can try something
else.***  

### Review docker PID

Containers are "Restricted Processes" not a VM
> docker run --name mongo -d mongo
> docker top mongo
> docker ps mongo
> ps aux | grep mongo
> docker stop mongo

## Stopping/Rerunning Containers

Removing and force removing containers
> docker container rm [ID] [ID] [ID]
> docker container rm -f [ID] [ID] [ID]
> docker container ls -a

Running the container after exiting
> docker start -ai [Container name]
> docker start [Container name]

Resources:

docker run reference
https://docs.docker.com/engine/reference/run/

docker start
https://docs.docker.com/engine/reference/commandline/start/