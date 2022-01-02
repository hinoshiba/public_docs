rdp
===

1. install
	```
	sudo -E apt install xrdp
	```
2. update config
	```
	sudo sed -e 's/^new_cursors=true/new_cursors=false/g' -i /etc/xrdp/xrdp.ini
	sudo systemctl enable xrdp
	```
3. reload config
	```
	sudo systemctl enable xrdp
	sudo systemctl restart xrdp
	```
4. ユーザでの設定
	```
	$ echo "xfce4-session" > ~/.xsession
	$ D=/usr/share/xfce4:/usr/share/xubuntu:/usr/local/share
	$ D=${D}:/usr/share:/var/lib/snapd/desktop:/usr/share
	$ cat <<EOF > ~/.xsessionrc
	> export XDG_SESSION_DESKTOP=xubuntu
	> export XDG_DATA_DIRS=${D}
	> export XDG_CONFIG_DIRS=/etc/xdg/xdg-xubuntu:/etc/xdg:/etc/xdg
	> EOF
	```
5. light-lockerのエラー無効化
	```
	$sudo cp /usr/bin/light-locker /usr/bin/light-locker.orig
	$ cat <<EOF | sudo tee /usr/bin/light-locker
	> #!/bin/sh
	>
	> # The light-locker uses XDG_SESSION_PATH provided by lightdm.
	> if [ ! -z "\${XDG_SESSION_PATH}" ]; then
	>   /usr/bin/light-locker.orig
	> else
	>   # Disable light-locker in XRDP.
	>   true
	> fi
	> EOF
	$ sudo chmod a+x /usr/bin/light-locker
	```
6. エラーパッケージ削除
	```
	sudo -E apt purge blueman
	```
