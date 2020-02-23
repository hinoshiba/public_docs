ssl証明書オペレーション
===

* [Let's Encrypt](https://letsencrypt.org) で、ワイルドカード証明書で運用

## 定常対応

1. 起動
	```
	mkdir ~/Downloads/work
	cp /etc/letsencrypt/cli.ini ~/Downloads/work
	certbot certonly --manual --preferred-challenges dns-01 --server https://acme-v02.api.letsencrypt.org/directory -m ichigx0f.hinoshiba@gmail.com -d hinoshiba.com -d "*.hinoshiba.com" -d "*.i.hinoshiba.com" --work-dir ~/Downloads/work --logs-dir ~/Downloads/work --config-dir ~/Downloads/work
	```

2. 対話(利用規約とか、公開設定とか。)
	```
	- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	Please read the Terms of Service at
	https://letsencrypt.org/documents/LE-SA-v1.2-November-15-2017.pdf. You must
	agree in order to register with the ACME server at
	https://acme-v02.api.letsencrypt.org/directory
	- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	(A)gree/(C)ancel: A

	- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	Would you be willing to share your email address with the Electronic Frontier
	Foundation, a founding partner of the Let's Encrypt project and the non-profit
	organization that develops Certbot? We'd like to send you email about our work
	encrypting the web, EFF news, campaigns, and ways to support digital freedom.
	- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	(Y)es/(N)o: N

	- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	NOTE: The IP of this machine will be publicly logged as having requested this
	certificate. If you're running certbot in manual mode on a machine that is not
	your server, please ensure you're okay with that.

	Are you OK with your IP being logged?
	- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	(Y)es/(N)o: Y
	```
3. TXTに登録するべきtokenが表示されるので、dnsに登録する
7. digして確認する
	```
	dig -t txt _acme-challenge.hinoshiba.com +short @8.8.8.8
	```
8. 対話で、Enter
9. ファイルが存在することを確認する
	```
	ls ~/Downloads/work/live/hinoshiba.com
	```
10. 対象のサーバに設定してあげる
```
server {
  ...
  listen 443 ssl;
  ssl_certificate     .../fullchain.pem;
  ssl_certificate_key .../privkey.pem;
  ...
}
```

## 初回インストール

```
sudo -E apt install certbot
```
