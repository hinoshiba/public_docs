gpg作成
===


### 作成
```sh
gpg --full-generate-key
```
* 選択肢
	* (1) RSA と RSA (デフォルト)
	* 鍵長は? (3072) 4096
	* 鍵の有効期間は? (0) 0
	* name
		* <myname>
	* email
		* <email>

### 作成を確認
```sh
gpg --list-secret-keys --keyid-format LONG
```
