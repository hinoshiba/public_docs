bashのflock
===

スクリプト自体をflock試み、ダメであればnonblockで終了する文字列

```bash
exec {lock_fd}< "$0"
flock --nonblock ${lock_fd} || exit 0
```
