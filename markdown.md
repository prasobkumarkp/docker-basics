**DOCKER BASICS**

1. After creating the docker file follow the commands run the container

```sh
docker build .
docker run -p 3000:300 <image id>
```

2. To stop the container

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
