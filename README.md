# i3-dotfiles
i3 Configuration

## Preview

![alt text](https://raw.githubusercontent.com/ajiepangestu/i3-dotfiles/master/preview.png)

## Dependencies 
1. [i3-gaps-rounded](https://aur.archlinux.org/packages/i3-gaps-rounded-git)
2. [ncpamixer](https://aur.archlinux.org/packages/otf-san-francisco)
3. [polybar](https://aur.archlinux.org/packages/polybar)
4. [xbanish](https://aur.archlinux.org/packages/xbanish)
5. [networkmanager-dmenu](https://aur.archlinux.org/packages/networkmanager-dmenu-git)
6. clipmenu
7. rofi

## Ohter Configurations

- Auto Login TTY
    ```
    sudo systemctl edit getty@tty1
    ```

    ```
    [Service]
    ExecStart=
    ExecStart=-/usr/bin/agetty --autologin {username| --noclear %I %TERM
    ```

- Fix Tearing
    ```
    sudo vim /etc/X11/xorg.conf.d/20-intel.conf
    ```

    ```
    Section "Device"
        Identifier "Intel Graphics"
        Driver "intel"

        Option "TearFree" "true"
    EndSection
    ```
- Tap to Click & Two Finger Scroll
    ```
    sudo vim /etc/X11/xorg.conf.d/90-touchpad.conf
    ```

    ```
    Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
        Option "TappingButtonMap" "lrm"
        Option "NaturalScrolling" "on"
        Option "ScrollMethod" "twofinger"
    EndSection

    ```




