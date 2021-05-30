NETWORK=game_server_net
CONTAINER_NAME=mc
IMAGE_NAME=itzg/minecraft-server:multiarch

docker rm -f ${CONTAINER_NAME} >/dev/null 2>&1
docker network create ${NETWORK} >/dev/null 2>&1

docker run -d -v $HOME/minecraft:/data \
    --network ${NETWORK} \
    -e TYPE=FORGE \
    -p 25565:25565 \
    -e EULA=TRUE \
    --restart=always \
    --name ${CONTAINER_NAME} ${IMAGE_NAME}
