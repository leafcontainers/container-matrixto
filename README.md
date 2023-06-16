# container-matrixto
A quick contianer for selfhosting [matrix.to](https://matrix.to/)

### how to run
#### with podman
```sh
#!/usr/bin/bash

# pull the contianer image
podman pull ghcr.io/leafcontainers/container-matrixto:nightly

# compose the container stack
podman-compose --file ./docker-compose.yaml up -d

# check logs
podman-compose --file ./docker-compose.yaml logs -f

# you should now be able to see matrixto runing 
curl http://localhost:5000
```
#### with docker
```sh
#!/usr/bin/bash

# pull the contianer image
docker pull ghcr.io/leafcontainers/container-matrixto:nightly

# compose the contianer stack
docker compose --file ./docker-compose.yaml up -d || docker-compose --file ./docker-compose.yaml up -d

# check logs
docker compose --file ./docker-compose.yaml logs -f || docker-compose --file ./docker-compose.yaml logs -f

# you should now be able to see matrixto runing
curl http://localhost:5000
```
