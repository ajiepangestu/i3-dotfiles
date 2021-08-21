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
8. [Nerd Font Iosevka](https://aur.archlinux.org/packages/nerd-fonts-iosevka)
9. [San Francisco Font](https://aur.archlinux.org/packages/otf-san-francisco)
10. [Material Design Icon](https://aur.archlinux.org/packages/ttf-material-design-icons-git)

## Other Configurations

- Auto Login TTY

```bash
sudo systemctl edit getty@tty1
 ```

 ```bash
 [Service]
 ExecStart=
 ExecStart=-/usr/bin/agetty --autologin {username} --noclear %I %TERM
 ```

- Fix Tearing

```bash
sudo nvim /etc/X11/xorg.conf.d/20-intel.conf
 ```

 ```bash
 Section "Device"
   Identifier "Intel Graphics"
   Driver "intel"
   Option "TearFree" "true"
 EndSection
 ```

- Tap to Click & Two Finger Scroll

```bash
 sudo nvim /etc/X11/xorg.conf.d/90-touchpad.conf
 ```

 ```bash
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

- Fix Dummy Sound Output on Swift 3
  required : **alsa-ucm-conf** & **sof-firmware**

```bash
sudo nvim /etc/modprobe.d/sound.conf
```

```bash
options snd-hda-intel model=dell-headset-multi
options snd-hda-intel power_save=1
```

```bash
amixer
```

- ESLINT NeoVIM

```bash
:CocCommand eslint.showOutputChannel
```

