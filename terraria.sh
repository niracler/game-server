docker run -d -p 7777:7777 --restart=always -v $HOME/terraria/world:/root/.local/share/Terraria/Worlds --name="terraria" -e WORLD_FILENAME=plrom.wld ryshe/terraria:latest
