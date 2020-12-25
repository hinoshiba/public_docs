nftables
===

1. インストール
	* `sudo -E apt install nftables`
2. 設定ファイル変更
	* /etc/nftables.conf
		```
		flush ruleset

		table ip filter {
		  chain input {
			type filter hook input priority 0; policy drop;

			iifname "lo" counter accept

			ct state established,related counter accept

			ct state new tcp dport 22 counter accept
		  }

		  chain forward {
			type filter hook forward priority 0; policy drop;
		  }

		  chain output {
			type filter hook output priority 0; policy accept;
		  }
		}
		```
3. 起動と有効化
	* `systemctl enable nftables --now`
4. 動作確認
	* `nft list ruleset`
