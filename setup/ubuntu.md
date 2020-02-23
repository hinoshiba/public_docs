Ubuntu を IntelNucに入れる時の注意点
===

### ポイントたち

1. NICのドライバが無い
	* biosで、サードパーティドライバ読み込めるように設定しておく必要ある

## 手順

### 1.NICのドライバが無い

1. e1000eドライバのダウンロード
	```
	sudo -E wget https://downloadmirror.intel.com/15817/eng/e1000e-3.4.2.4.tar.gz
	```
2. sourceの保管
	```
	sudo mv e1000e-3.4.2.4.tar.gz /usr/local/src/
	```
3. 解凍
	```
	cd /usr/local/src/
	tar zxvf e1000e-3.4.2.4.tar.gz
	```
4. インストールなど
	```
	cd /usr/local/src/e1000e-3.4.2.4/
	sudo make install
	sudo modprobe -r e1000e
	sudo modprobe e1000e
	```
5. 生えるの確認
	```
	ip add
	```
6. reboot後も読み込まれるの確認
