# Librelingo Dev Docker Container
A (unofficial) Dockerfile and container to run LibreLingo dev

[Docker Hub](https://hub.docker.com/r/cutthroat78/librelingo)

## Usage
### docker cli
```
docker container run -p 3000:3000 -d --name LibreLingo-Dev cutthroat78/librelingo
```
### docker-compose
```
version: '3.3'
services:
    librelingo:
        ports:
            - '3000:3000'
        container_name: LibreLingo-Dev
        image: cutthroat78/librelingo
```

To-Do:

- [ ] Add expose to dockerfile
- [ ] figure out way to have it take in course and automatically put them into librelingo
- [ ] Change image cutthroat78/librelingo-dev
- [ ] Fix link above and above docker cli command after changing to cutthroat78/librelingo-dev
