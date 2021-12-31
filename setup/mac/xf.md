x11 forwarding
===

1. XQuartzインストール
	* https://www.xquartz.org/
2. altキー割り当て
	* `~/.Xmodmap` へ以下を加筆
```
clear mod1
keycode 66 = Meta_L
keycode 63 = Meta_R
add mod1 = Meta_L Meta_R
```
