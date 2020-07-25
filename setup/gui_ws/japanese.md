japanese
===

1. install and setup
    ```
    sudo -E apt install language-pack-ja-base language-pack-ja ibus-mozc
    localectl set-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
    source /etc/default/locale
    echo $LANG
    ```
2. reboot
3. 言語サポートの更新
    * proxyはいかだと、直接インストールできないので、pakage一覧を確認したら、手で入れる
4. ディレクトリの英字化
    ```
    LANG=C xdg-user-dirs-gtk-update
    ```
