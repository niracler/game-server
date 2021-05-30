docker run -d \
    -p 7001:7001 \
    -p 7500:7500 \
    -v $(pwd)/frps/frps.ini:/conf/frps.ini \
    --restart=always \
    --name frps cloverzrg/frps-docker

