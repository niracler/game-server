docker rm -f frps >/dev/null 2>&1

docker run -d \
    -p 7001:7001 \
    -p 7500:7500 \
    -p 7777:7777 \
    -p 25565:25565 \
    -v $(pwd)/frps/frps.ini:/conf/frps.ini \
    --restart=always \
    --name frps cloverzrg/frps-docker

