# dotfiles
Various config files dump.

![image](https://i.imgur.com/JlNaziF.png)

### Contents
- `adiaphora` and `nex` (oh-my-zsh themes) 
- `alacritty` (terminal emulator)
- `bspwm` (tiling window manager)
- `mpv` (media player)
- `nitorgen`(desktop background browser and setter)
- `picom` (compositor)
- `polybar` (status bar)
- `ranger` (file manager)
- `redshift` (night light filter)
- `rofi` (application launcher)
- `sxhkd` (general key binder)
- `sxiv` (image viewer)
- `tmux` (terminal multiplexer)
- `vim` and `nvim` (editor)
- `vimrc-vs` (vimrc for vim-mode inside vscode/codium and PyCharm)
- `xmodmap` (utility for modifying keymaps)
- `xmonad` (tiling window manager)
- `zathura` (pdf viewer)
- `zsh` and `bash` (shell)

### Current Setup
Lately, I have been using WSL2 (Ubuntu 22.04) for dev work on my personal system. I finally bit the bullet and setup Neovim for development. All the cool kids seem to be using it. I switched back to zsh, without oh-my-zsh (bloat bad). Everything runs inside a tmux session.
I also use VS Code and PyCharm time to time with vim mode.

### TODOS
- [ ] Manage these dotfiles through something like GNU stow
- [ ] Clean up \home dir, move config files to `.config`
- [ ] Better Organize `zsh` and `bash` files