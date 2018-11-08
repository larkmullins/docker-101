# Docker 101

Docker 101 Presentation Demo Code

## Docker Commands

```docker
docker images                   // list images
docker ps                       // list running containers
docker ps -a                    // list all containers (running and stopped)
docker build -t nginx:local .   // create new image called nginx with a tag of local
docker run nginx:local          // run nginx image with local tag
docker run -d nginx:local       // run nginx image with local tag in detached mode
docker stop <container-name>    // stop a specific container
docker start <container-name>   // start a specific container
docker rm -f <container-name>   // delete a specific container
docker rmi -f <image-name>      // delete a specific image
```

## SQL Queries

`INSERT INTO fis (id, name) VALUES ('d07e7b71-1989-4a83-8bb3-cff79b11fe2c', 'Maple Leafs Trust');`