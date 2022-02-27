gpg 保管
===

## export
```bash
# 公開鍵
gpg --armor --export <user-id> > public.key

# 秘密鍵
gpg --export-secret-keys --armor <user-id> > privkey.asc
```


## import

```bash
gpg --import public.key
gpg --import privkey.asc
```

### trust

```bash
gpg --edit-key <GPG key id> trust quit
```
