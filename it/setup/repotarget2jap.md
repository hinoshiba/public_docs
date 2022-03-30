apt repostiroy 2 jp
===

1. 現在のrepository表記を確認
	```
	cat /etc/apt/sources.list
	```
2. 更新
	```
	sudo sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu%http://ftp.iij.ad.jp/pub/linux/ubuntu/archive/%g" /etc/apt/sources.list
	```
