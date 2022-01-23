# Librelingo Dev Docker Container
A (unofficial) Dockerfile and container to run LibreLingo dev

## Usage
### docker cli
```
docker container run -p 3000:3000 --name LibreLingo cutthroat78/librelingo
```
### docker-compose
```
version: '3.3'
services:
    librelingo:
        ports:
            - '3000:3000'
        container_name: LibreLingo
        image: cutthroat78/librelingo
```