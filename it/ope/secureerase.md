secureerase
===

* Ubuntu22.04でのやり方

# 手順

1. 一回suspendにしてfrozenを外す
	```bash
	sudo systemctl suspend
	```
2. 消去前のパスワードセット
	```bash
	sudo hdparm --user-master u --security-set-pass aaaaa /dev/sdX
	```
3. 消去
	```bash
	sudo hdparm --user-master u --security-erase aaaaa /dev/sdX
	```

# パラメータ確認

```bash
sudo hdparm -I /dev/sdX
```

```
Security: 
        Master password revision code = 65534
                supported
                enabled #ここが、パスワード設定だと、enable。secure erase後は、not enableに変わる
        not     locked
        not     frozen
        not     expired: security count
                supported: enhanced erase
        Security level high
        2min for SECURITY ERASE UNIT. 2min for ENHANCED SECURITY ERASE UNIT.
```
