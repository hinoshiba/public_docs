ゴミ掃除
===

* ubuntu 18.04 server
	```
	sudo systemctl stop snapd
	sudo systemctl stop snapd.socket
	sudo apt purge snapd
	sudo apt purge network-manager
	sudo apt autoremove
	```
* ubuntu 18.04 desktop
	```
	sudo systemctl stop snapd
	sudo systemctl stop snapd.socket
	sudo apt purge snapd
	sudo apt purge network-manager
	sudo apt purge firefox
	sudo -E apt purge gnome*
	sudo apt autoremove
	```
