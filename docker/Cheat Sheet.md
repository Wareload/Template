# Docker Cheat Sheet

## Docker Basics

### Running Containers

```bash
docker run <image_name>
```

```bash
docker run -d <image_name>
```

```bash
docker run -it <image_name>
```

### List Running Containers
```bash
docker ps
```

### List All Containers
```bash
docker ps -a
```

### Stop a Container
```bash
docker stop <container_id>
```

### Remove a Container
```bash
docker rm <container_id>
```

### Remove All Stopped Containers
```bash
docker container prune
```

### Docker Images
#### Search for Images
```bash
docker search <image_name>
```

#### Download an Image
```bash
docker pull <image_name>
```

#### List Downloaded Images
```bash
docker images
```

#### Remove an Image
```bash
docker rmi <image_name>
```

#### Build an Image
```bash
docker build -t <image_name> <path_to_Dockerfile_directory>
```

## Docker Compose

### Create and Start Containers Using Compose
```bash
docker-compose up
```

### Stop and Remove Containers Created by Compose
```bash
docker-compose down
```

### View Compose Services Status
```bash
docker-compose ps
```

