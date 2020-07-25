opera
===

1. repository追加
    ```
    wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
    echo deb https://deb.opera.com/opera-stable/ stable non-free | sudo tee /etc/apt/sources.list.d/opera.list
    ```
2. install
    ```
    sudo -E apt install opera-stable
    ```
