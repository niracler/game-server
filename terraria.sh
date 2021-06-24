NETWORK=game_server_net
CONTAINER_NAME=terraria

docker rm -f ${CONTAINER_NAME} >/dev/null 2>&1
docker network create ${NETWORK} >/dev/null 2>&1

docker run -d \
    -p 7777:7777 \
    --restart=always \
    --network ${NETWORK} \
    -v $HOME/terraria/world:/root/.local/share/Terraria/Worlds \
    --name=${CONTAINER_NAME} -e WORLD_FILENAME=plrom.wld ryshe/terraria:latest
