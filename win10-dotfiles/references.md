# Installing vim-plug on windows-10

### Neovim
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
       
### Vim
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

# Git-Bash Profile Windows Terminal
{
"background" : "#1c1c1c",
"tabColor" : "#1c1c1c",
"closeOnExit" : true,
"colorScheme" : "Campbell",
"commandline" : "\"%PROGRAMFILES%\\git\\bin\\bash.exe\" --login -i -l",
"cursorColor" : "#FFFFFF",
"cursorShape" : "bar",
"fontFace" : "Consolas",
"fontSize" : 14,
"guid" : "{00000000-0000-0000-0000-000000012345}",
"historySize" : 9001,
"icon" : "%PROGRAMFILES%\\git\\mingw64\\share\\git\\git-for-windows.ico",
"name" : "Git Bash",
"padding" : "0, 0, 0, 0",
"snapOnInput" : true
}