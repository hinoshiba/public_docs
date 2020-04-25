uuidでmount
===

1. uuid確認
	```
	user@host:~$ ls -l /dev/disk/by-uuid/
	total 0
	lrwxrwxrwx 1 root root 10 Apr 25 14:10 bcc4d7a8-543a-407f-a330-c83735f50431 -> ../../sdb1
	```
2. `/etc/fstab`の更新
	```
	/dev/disk/by-uuid/bcc4d7a8-543a-407f-a330-c83735f50431 <target> ext4 defaults,noatime 0 2
	```
