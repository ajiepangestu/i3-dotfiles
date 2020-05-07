# i3-dotfiles
i3 Configuration

## Preview

![alt text](https://raw.githubusercontent.com/ajiepangestu/i3-dotfiles/master/preview.png)

## Prerequisite

- Auto Login TTY
    ```
    sudo systemctl edit getty@tty1
    ```

    ```
    [Service]
    ExecStart=
    ExecStart=-/usr/bin/agetty --autologin username --noclear %I %TERM
    ```
## Dependencies 
1. [i3-gaps-rounded](https://aur.archlinux.org/packages/i3-gaps-rounded-git)
2. [ncpamixer](https://aur.archlinux.org/packages/otf-san-francisco)
3. [polybar](https://aur.archlinux.org/packages/polybar)
4. [xbanish](https://aur.archlinux.org/packages/xbanish)
5. [networkmanager-dmenu](https://aur.archlinux.org/packages/networkmanager-dmenu-git)
6. clipmenu
7. rofi

