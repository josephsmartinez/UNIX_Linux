# Docker Networking

### Docker Network Defaults

- Each container connected to a private virtual network "bridge"
- Each virtual network routes through NAT firewall on host IP
- All container on a virtual network can talk to each other without -p
- Best practice is to create a new virtual network for each app:
- network 'my_web_app' for mysql and php/apache Containers
- network 'my_api' for mongo and node.js containers

## Docker Networks: Concepts for Private and Public Comma in Containers
- 'Batteries Included and Removable'
- Defaults work well in many cases, but easy to swap out parts to customize it.
- Make new virtual network
- Attach container to more then one virtual network (or none)
- Skip virtual network and use host IP (--net=host)
- Use different Docker network driver to gain new abilities

### Docker Networking: Concepts

Expose port to host  
`docker container run -p`  

Check the ports exposed on the running container
`docker container port <container>`

### Let's run a webhost on nginx to start
`docker container run -p 80:80 --name webhost -d nginx`  

### Check the port forwarding
`docker container port webhost`  

***FIXME: Change In Official Nginx Image Removes Ping***

Anywhere I do a docker container run <stuff> nginx , where nginx  is the
image you should use, replace that with nginx:alpine,
which still has ping command in it.

## Docker Networks: CLI Management of Virtual Networks
Default Docker virtual network is NAT'ed behind the
Host IP (--network bridge)
`docker network --help`  

Show network  
`docker network ls`

Inspect a network  
`docker network inspect [option]`  

Create a network  
`docker network create --driver`  

Attach a network to container  
`docker network connect`  

Detach a network from container  
`docker network disconnect`  

Host network, skips the Docker interface and attaches
itself to the host interface. (--network host)
***NOTE: Using --network host can gain performance by skipping virtual networks but sacrifices security of container model***

### Let's create a Docker network...
Spawns a new virtual network for you to attach containers to  
`docker network create my_app_net`  
Dynamically creates a NIC in a container on an existing virtual network.  
```
docker network connect [network] [network]
docker container inspect
```
### Example: Launching a container on the specific network interface
`docker container run -d --name new_nginx --network my_app_net nginx`

### Dynamically removes a NIC from a container on a specific virtual network
`docker network disconnect [network] [network]`

Docker Networks: Default Security
- Create your apps so frontend/backend sit on same Docker network
- Their inter-communication never leave host
- All externally exposed ports closed by default
- You must manually expose via -p, which is better default security
- This gets even better later with Swarm and Overlay network

## Docker Networks: DNS and How Containers Find Each Other
- Understanding how DNS is the key to easy inter-container communication
- See how it works by default with custom networks
- Learn how to use --link to enable DNS on default bridge network

Name Containers
In the world of container constantly launching, disappearing,
, moving, expanding, shrinking, and providing micro-services.
We can no longer rely on IP address as the way to talk.
***Forget IPs: Static IP's and using IP's for talking to container is not recommended***

### Docker DNS
Docker daemon has a built-in DNS server that containers use by
default. This is the way containers will communicate with on other  

DNS Default Names
- Docker defaults the hostname to the container's names,
but you can also set aliases.

Given two different nginx containers [container] [container]
# docker container exec -it my_nginx ping new_nginx


## Setting up 2 container that are networked and ping eachother
```
docker container run -t -d --name mikes_centos --network joes_network cen
tos

docker container run -t -d --name joes_centos --network joes_network cen
tos

docker exec -it joes_centos /bin/bash
```

Docker Networks: DNS
- Containers should't rely on IP's of inter-communication
- DNS for friendly names is built-in if you use custom Networks
- You're using custom network right?