gpg revoke
===

### 失効
```bash
gpg --edit-key <id>
> revkey
> ...
> save
```

### githubへ失効を登録する場合

1. 同一キーのGPGキーを削除する
2. 再エクスポートを行い、GPGキーを登録する
