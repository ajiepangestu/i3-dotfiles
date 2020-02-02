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

