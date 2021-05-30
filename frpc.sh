NETWORK=game_server_net
CONTAINER_NAME=frpc

docker rm -f ${CONTAINER_NAME} >/dev/null 2>&1
docker network create ${NETWORK} >/dev/null 2>&1

docker run -d \
    --network ${NETWORK} \
    -v $(pwd)/frpc/frpc.ini:/etc/frp/frpc.ini \
    --restart=always \
    --name ${CONTAINER_NAME} snowdreamtech/frpc
