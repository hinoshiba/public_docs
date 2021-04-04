nftables
===

1. nftインストール
	1. ufw無効
	    1. `sudo ufw disable`
	    2. `sudo systemctl stop ufw`
	    3. `sudo systemctl disable ufw`
	    4. `reboot`
	3. `sudo apt install nftables`
	4. `sudo update-alternatives --config iptables`
	    * nftablesを選択
	5. `sudo vim /etc/nftables.conf`
		```
		flush ruleset

		table inet filter {
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
		* `sudo iptables --version`
			* `iptables v1.8.4 (nf_tables)`
