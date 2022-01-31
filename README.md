# Librelingo Dev Docker Container
A (unofficial) Dockerfile and container to run LibreLingo dev on your system and/or to test out courses

[Docker Hub](https://hub.docker.com/r/cutthroat78/librelingo-dev)

## Usage
After using one of the methods below and it runs successfully, you can access LibreLingo at http://(ip of host that is running the container):3000
If you have volumed mounted your own course (to /LibreLingo/courses/your-course inside of the container), you can access it here http://(ip of host that is running the container):3000/course/your-course
### docker cli
```
docker container run -v (path to your course):/LibreLingo/courses/your-course -p 3000:3000 -d --name LibreLingo-Dev cutthroat78/librelingo-dev
```
### docker-compose
```
version: '3.3'
services:
    librelingo-dev:
        volumes:
            - (path to your course)
        ports:
            - '3000:3000'
        container_name: LibreLingo-Dev
        image: cutthroat78/librelingo-dev
```

To-Do:

- [x] Add expose to dockerfile
- [x] figure out way to have it take in course and automatically put them into librelingo
- [x] Change image cutthroat78/librelingo-dev
- [x] Fix link above and above docker cli command after changing to cutthroat78/librelingo-dev
- [x] Added comments in dockerfile so I know what each part/command does
