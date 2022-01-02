nfs
===

1. install
```
sudo -E apt install nfs-common
```

2. add fstab
```
ip.add.re.ss:/fs/path /mnt/path nfs async,user,auto,dev,exec,rw,suid  0 0
```
