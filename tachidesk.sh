docker run -d --restart=always \
    --name tachidesk-server -p 0.0.0.0:4567:4567 -v ~/.Tachidesk:/home/suwayomi/.local/share/Tachidesk ghcr.io/suwayomi/tachidesk
