docker
===

1. 必要なパッケージのインストール
	```
	sudo -E apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
	```
2. gpgキーの登録
	```
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	```
3. repositoryの追加
	```
	sudo -E add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
	```
4. docker install
	```
	sudo -E apt-get install docker-ce docker-ce-cli containerd.io
	```
5. 権限付与
	```
	sudo usermod -aG docker <your-account>
	```
6. proxy設定
	1. ディレクトリ作成
		```
		sudo mkdir -p /etc/systemd/system/docker.service.d
		```
	2. config作成
		```
		$ sudo vim /etc/systemd/system/docker.service.d/http-proxy.conf
		[Service]
		Environment="HTTP_PROXY=http://<yourproxy:port>"
		Environment="HTTPS_PROXY=http://<yourproxy:prot>"
		Environment="NO_PROXY=localhost,127.0.0.1"
		```
	3. 読み込み
		```
		sudo systemctl daemon-reload
		sudo systemctl restart docker
		```
6. 再起動(user sessionと、docker)
7. テスト
	```
	docker run hello-world
	```
