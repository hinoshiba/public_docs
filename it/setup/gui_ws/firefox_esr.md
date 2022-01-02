firefox_esr
===

1. remove firefox
    ```
    sudo -E apt purge firefox
    ```
2. install firefox esr
    ```
    sudo -E add-apt-repository ppa:mozillateam/ppa
    sudo -E apt-get update
    sudo -E apt install firefox-esr
    ```
3. 日本語プラグイン追加
    * `設定>言語設定>日本語>再起動`
