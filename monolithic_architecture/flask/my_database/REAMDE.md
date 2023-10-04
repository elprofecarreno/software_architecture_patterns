# MY DATABASE

Project database my database container.


## CREATE IMAGE

```docker
docker build -t my-system-db:1.0.0 . 
``````

## CREATE CONTAINER

```docker
docker run -p 8806:3306 -d --name my-system-db-container my-system-db:1.0.0 
``````

