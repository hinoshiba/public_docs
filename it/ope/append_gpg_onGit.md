github登録と、gitでの利用設定
===

## 鍵の確認

```sh
gpg --list-secret-keys
gpg --armor --export <ID>
```

## 鍵のgitcommand反映
```sh
git config --global commit.gpgsign true
git config --global user.signingkey <ID>
```

## 鍵の削除
```sh
gpg --list-secret-keys --keyid-format LONG #uidを確認
gpg --delete-secret-keys <ID>
```
