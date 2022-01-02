chonryd
===

1. ntpdが入っているなら消す
	```
	sudo apt purge ntp
	```
2. chronyd インストール
	```
	sudo -E apt install chrony
	```
3. 設定をする
	* /etc/chrony/chrony.conf
		* `ntp1.jst.mfeed.ad.jp`
		* `ntp2.jst.mfeed.ad.jp`
		* `ntp3.jst.mfeed.ad.jp`
4. 自動起動と有効化
	```
	systemctl enable chrony --now
	```
5. 動作確認
	```
	chronyc sources
	```
