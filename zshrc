# path of ohmyzsh installation
export ZSH=$HOME/.oh-my-zsh

# better colors
export TERM="xterm-256color"

# path to custom scripts
PATH="$HOME/my_scripts:$PATH"
export PATH
export PATH=/opt/firefox/firefox:$PATH

# prompt
ZSH_THEME="spaceship"

# prompt customization
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL=❯
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_HG_SHOW=false
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_CONTEXT_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_VENV_SHOW=false
SPACESHIP_PYENV_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_JOBS_SHOW=false

# reloads zsh
alias update='source ~/.zshrc'

#fixes rotation
alias fr='xrandr -o normal && exit'

#convers webp to png
alias conv='file=$(ls *.webp | head -n 1); dwebp $file -o ${file%%.webp}.png; rm $file'

#my dashboard of sorts
alias dashboard='google-chrome /home/oreo/dashboard/index.html'

#restarts wifi
alias wrpy='python wifi_reset.py'
alias wr='nmcli radio wifi off && figlet reseting wifi && sleep 2 && nmcli radio wifi on'

#nvim alias
alias v='nvim'
alias vim='nvim'

#launches piskel
alias piskel='/home/oreo/Piskel-0.14.0-64bits/piskel >/dev/null 2>&1'

#toggle trackpad status
alias ttp=toggletrackpad

#show colors
showColors='for i in {1..256}; do print -P "%F{$i}Color : $i"; done;'

# vim keybinds
bindkey -v

# qol alias
alias mv="mv -iv"
alias cp="cp -riv"
alias mkdir="mkdir -vp"

# caps is additional esc
alias mcs="setxkbmap -option caps:escape"

# plugins
plugins=(git)


source $ZSH/oh-my-zsh.sh
