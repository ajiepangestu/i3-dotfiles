# i3-dotfiles
i3 Configuration

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

