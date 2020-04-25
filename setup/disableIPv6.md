disable ipv6
===

1. add `/etc/sysctl.conf`
    ```
    net.ipv6.conf.all.disable_ipv6=1
    net.ipv6.conf.default.disable_ipv6=1
    ```
2. load sysctl
    ```
    sudo sysctl -p
    ```
3. update `/etc/default/grub`
    ```diff
    - GRUB_CMDLINE_LINUX_DEFAULT=""
    + GRUB_CMDLINE_LINUX_DEFAULT="ipv6.disable=1"
    - GRUB_CMDLINE_LINUX=""
    + GRUB_CMDLINE_LINUX="ipv6.disable=1"
    ```
4. reboot
