docker run -d -v $HOME/minecraft:/data \
    -e TYPE=FORGE \
    -p 25565:25565 \
    -e EULA=TRUE \
    --restart=always \
    --name mc itzg/minecraft-server:multiarch
