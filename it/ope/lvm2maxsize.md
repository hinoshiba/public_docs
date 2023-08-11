lvm最大化
===

```bash
sudo lvextend -l +100%FREE /dev/ubuntu-vg/ubuntu-lv
sudo vgdisplay
sudo resize2fs /dev/ubuntu-vg/ubuntu-lv
```
