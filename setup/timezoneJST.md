timezone jst
===

1. timezone確認
	```
	timedatectl
	```
2. tokyoの名前を確認
	```
	timedatectl list-timezones | grep -i tokyo
	```
3. 2で確認した名前を設定
	```
	sudo timedatectl set-timezone Asia/Tokyo
	```
