onedriveAtUbuntu
===

# 管理者権限でインストール
1. install

	```
	sudo -E apt install  build-essential libcurl4-openssl-dev  libsqlite3-dev pkg-config curl
	```
2. install dmd
	```
	$ curl -fsS https://dlang.org/install.sh | bash -s dmd
	```
3. source
	```
	$ source ~/dlang/dmd-2.091.0/activate
	```
4. OneDrive Free Clientインストール
	```
	(dmd-2.091.0)user$ cd <workpath>
	(dmd-2.091.0)user$ git clone https://github.com/abraunegg/onedrive.git
	(dmd-2.091.0)user$ cd onedrive
	(dmd-2.091.0)user$ ./configure
	(dmd-2.091.0)user$ make clean; make
	(dmd-2.091.0)user$ sudo make install
	```

# 利用者セットアップ

1. 初回実行
	```
	$ onedrive
	# 出てくるURLをコピー
	```
2. onedrive側(ブラウザで許可)
3. リダイレクトされたURLをコピー
4. `Enter the response uri:` に貼り付ける
5. 完了
6. 任意の同期
	```
	onedrive --synchronize
	onedrive --synchronize --single-directory dir_name
	```


## 参考

* https://www.virment.com/setup-onedrive-ubuntu18-04/
