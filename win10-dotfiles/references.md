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

# Windows Terminal Config

### Git Bash Profile
```json
{
"background" : "#1c1c1c",
"tabColor" : "#1c1c1c",
"closeOnExit" : true,
"colorScheme" : "Campbell",
"commandline" : "\"%PROGRAMFILES%\\git\\bin\\bash.exe\" --login -i -l",
// "commandline" : "\"C:\\Users\\{YOUR_USERNAME}\\Programs\\Git\\bin\\bash.exe\" --login -i -l",
"cursorColor" : "#FFFFFF",
"cursorShape" : "bar",
"fontFace" : "Consolas",
"guid" : "{00000000-0000-0000-0000-000000012345}",
"historySize" : 9001,
"icon" : "%PROGRAMFILES%\\git\\mingw64\\share\\git\\git-for-windows.ico",
"name" : "Git Bash",
"padding" : "0, 0, 0, 0",
"snapOnInput" : true
}
```

### Actions
```json
"actions":
    [
		//{ "command": { "action": "openSettings", "target": "settingsUI" }, "keys": "ctrl+shift+," },
        { "command": {"action": "copy", "singleLine": false }, "keys": "ctrl+c" },
        { "command": "newTab", "keys": "ctrl+t" }
    ]
```
### Global Settings
```json
"defaults":
        {
        // Put settings here that you want to apply to all profiles.
	    "bellStyle": "none",
		"fontFace" : "Cascadia Mono",
        "fontSize" : 12
        }
```
