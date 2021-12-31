x11 forwarding
===

1. XQuartzインストール
	* https://www.xquartz.org/
2. altキー割り当て
	* `~/.Xmodmap` へ以下を加筆
```
clear Mod1
keycode 66 = Alt_L
keycode 69 = Alt_R
add Mod1 = Alt_L
add Mod1 = Alt_R
```
