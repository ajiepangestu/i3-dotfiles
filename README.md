# i3-dotfiles
i3 Configuration

## Prerequisite

- Edit Startup TTY
```
sudo systemctl edit getty@tty1
```

```
[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin pangestu --noclear %I %TERM
```

