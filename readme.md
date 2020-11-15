**DOCKER BASICS**

1. After creating the docker file follow the commands run the container

```sh
docker build .
docker run -p 3000:300 <image id>
```

1. To stop the container

```sh
docker ps  # list all the running containers
docker stop <container_name>
```

```powershell
prasob ⇒ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                    NAMES
88951e4c050f        b41d2b961e53        "docker-entrypoint.s…"   47 seconds ago      Up 46 seconds       0.0.0.0:3000->3000/tcp   confident_panini
prasob ⇒ docker stop confident_panini
confident_panini

```

```sh
docker run node # it creates and run a container based on the node image, docker will download the node image from docker.hub if its not found locally
docker ps # all running containers
docker ps -a    # Images downloaded by docker for us
docker run -it node # to expose an interactive session from inside the container to the machine - Terminal
docker run -p 8000:80 -d <image id> # where -d detached mod
docker build . # to rebuild an image after code change
```
