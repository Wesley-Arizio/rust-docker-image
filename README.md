# Rust-Docker application

Small rust project to learn multi-stage docker image where we:
 - Build a release version
 - Put the executable file in a debian based image
 - Execute the code in a container

### Run the project
To start we need to build the image and for that we need the docker running.

1. Build the image
```docker
docker build -t my-rust-app:1.0 .  
```

2. Run the image through a container
```docker
docker run -ti --name rust-app  my-rust-app:1.0
```
