アプリケーションへのproxy用ショートカット作成
===

1. copy from original file
    ```
    cp /usr/share/applications/<targetapp.desktop> ~/.local/share/applications/<targetapp.desktop>
    ```
2. add text of proxy
    ```diff
    $ ~/.local/share/applications/<targetapp.desktop>
    - exec <appname> %u
    + exec <appname> %u --proxy-server="proxy.i.hinoshiba.com:8080"
    ```
