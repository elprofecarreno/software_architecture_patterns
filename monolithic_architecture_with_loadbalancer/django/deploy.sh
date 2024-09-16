#!/bin/bash
# METODO QUE PERMITE ELIMINAR UN CONTENEDOR INGRESANDO EL NOMBRE
removeContainer() {
    NAME=$1
    # Obtiene el ID del contenedor para eliminarlo
    CONTAINER_ID=$(docker ps -a | grep $NAME | awk '{print $1}')
    if [ -n "$CONTAINER_ID" ]; then
        echo "DELETE DOCKER CONTAINER $CONTAINER_ID"
        DOCKER_CONTAINER_DELETE=$(docker rm -f $CONTAINER_ID)
    fi
}

# METODO QUE PERMITE ELIMINAR UNA IMAGEN INGRESANDO EL NOMBRE
removeDeleteImage() {
    NAME=$1
    # Obtiene el ID de la imagen para eliminarlo
    IMAGE_ID=$(docker images | grep $NAME | awk '{print $3}')
    if [ -n "$IMAGE_ID" ]; then
        echo "DELETE DOCKER IMAGE $IMAGE_ID"
        DOCKER_IMAGE_DELETE=$(docker rmi -f $IMAGE_ID)
    fi
}
# ELIMINAR CONTENEDORES
echo "DELETE CONTAINERS"
removeContainer "monolithic-app-loadbalancer-container"
removeContainer "monolithic-db-loadbalancer-container"
removeContainer "monolithic-loadbalancer-nginx"

# ELIMINAR IMAGENES
echo "DELETE IMAGES"
removeDeleteImage "monolithic-app-loadbalancer-container"
removeDeleteImage "monolithic-db-loadbalancer-container"
removeDeleteImage "monolithic-loadbalancer-nginx"

BASE_DIR=$(dirname $0)
echo "BASE_DIR = $BASE_DIR"
# CONSTRUIR IMAGEN, DESPLEGAR CONTENEDORES APP WEB Y BALANCEADOR
docker compose -f $BASE_DIR/docker-compose.yaml up