minecraft
===

### docker install

```
curl https://get.docker.com | sh
sudo usermod -aG docker $USER
sudo reboot
sudo systemctl start docker
sudo systemctl enable docker
docker --version
```

### docker compose

```
sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
```

### minecraft

```
mkdir -p minecraft/data
vim minecraft/docker-compose.yml
```

* docker-compose.yml [ref](https://tyablog.net/2017/09/17/docker-minecraft/#docker-compose)
	```
	version: '2'
	services:
		minecraft-server:
			container_name: mc
			image: itzg/minecraft-server
			ports:
				- "25565:25565"
			tty: true
			stdin_open: true
			restart: always
			volumes:
				- ./data:/data
			environment:
				EULA: "TRUE"
	```

### boot

```
docker-compose up -d
docker-compose ps
```

### stop

```
docker-compose stop
```


### add op

```
docker-compose stop
cat $minecraft/data/ops.txt
usernames
docker-compose up -d
```

