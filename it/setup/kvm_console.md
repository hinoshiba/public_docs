enable kvm console
===


### ubuntu 18.04
1. `/etc/default/grub`を編集
	```
	GRUB_CMDLINE_LINUX="console=tty1 console=ttyS0,115200"
	GRUB_TERMINAL="console serial"
	GRUB_SERIAL_COMMAND="serial --speed=115200 --unit=0 --word=8 --parity=no --stop=1"
	```
2. update
	```
	sudo update-grub
	```
5. boot後のconsoleを有効化
	```
	systemctl start serial-getty@ttyS0
	systemctl enable serial-getty@ttyS0
	```
6. `virsh console <vmname>` で取得できることを確認する
7. rebootして、全て取れることを確認
8. `ctrl + ]` で抜ける

### cnetos

1. `/etc/default/grub`を編集
	```
	# GRUB_CMDLINE_LINUX="crashkernel=auto rd.lvm.lv=centos/root rd.lvm.lv=centos/swap rhgb quiet" #old
	GRUB_CMDLINE_LINUX="crashkernel=auto rd.lvm.lv=centos/root rd.lvm.lv=centos/swap rhgb quiet console=ttyS0" #new
	```
2. `sudo grub2-mkconfig -o /boot/grub2/grub.cfg` を実施
3. reboot
4. `virsh console <vmname>` で取得できることを確認する
5. boot後のconsoleを有効化
	```
	systemctl start serial-getty@ttyS0
	systemctl enable serial-getty@ttyS0
	```
6. `virsh console <vmname>` で取得できることを確認する
7. rebootして、全て取れることを確認
8. `ctrl + ]` で抜ける
