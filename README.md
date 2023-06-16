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

# check the container stack's logs
podman-compose --file ./docker-compose.yaml logs -f

# you should now be able to see matrixto runing 
curl http://localhost:5000
```
##### With podman-cli
```sh
#!/usr/bin/bash

# pull the contianer image
podman pull ghcr.io/leafcontainers/container-matrixto:nightly

# run the container
podman run \
  -v matrixto_data:/opt/matrix_to \
  --name matrix_to \
  -h matrix_to \
  --health-interval 1m30s \
  --health-retries 1m30s \
  --health-cmd "curl -f http://localhost:5000" \
  -p 5000:5000/tcp \
  ghcr.io/leafcontainers/container-matrixto:nightly

# check the container's logs
podman logs matrix_to -f

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

# check the container stack's logs
docker compose --file ./docker-compose.yaml logs -f || docker-compose --file ./docker-compose.yaml logs -f

# you should now be able to see matrixto runing
curl http://localhost:5000
```
##### With docker-cli
```sh
#!/usr/bin/bash

# pull the contianer image
docker pull ghcr.io/leafcontainers/container-matrixto:nightly

# run the container
docker run \
  -v matrixto_data:/opt/matrix_to \
  --name matrix_to \
  -h matrix_to \
  --health-interval 1m30s \
  --health-retries 1m30s \
  --health-cmd "curl -f http://localhost:5000" \
  -p 5000:5000/tcp \
  ghcr.io/leafcontainers/container-matrixto:nightly

# check the container's logs
docker logs matrix_to -f

# you should now be able to see matrixto runing
curl http://localhost:5000
``` 
