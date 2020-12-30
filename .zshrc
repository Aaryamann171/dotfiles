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
SPACESHIP_USER_SHOW=always
SPACESHIP_USER_COLOR=blue
SPACESHIP_HOST_SHOW=always
SPACESHIP_HOST_COLOR=cyan
SPACESHIP_DIR_COLOR=green
SPACESHIP_GIT_BRANCH_COLOR=yellow
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_NODE_SHOW=false
SPACESHIP_EXEC_TIME_SHOW=false
SPACESHIP_EXIT_CODE_SHOW=true
SPACESHIP_EXIT_CODE_SYMBOL=""

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

# nvim alias
alias v='nvim'
alias vim='nvim'
alias vi='nvim'

# launches piskel
alias piskel='/home/oreo/Piskel-0.14.0-64bits/piskel >/dev/null 2>&1'

# toggle trackpad status
alias ttp=toggletrackpad

# show colors
alias showColors='for i in {1..256}; do print -P "%F{$i}Color : $i"; done;'

# vim keybinds
bindkey -v

# qol alias
alias mv="mv -iv"
alias cp="cp -riv"
alias mkdir="mkdir -vp"

# caps is additional esc
alias mcs="setxkbmap -option caps:escape"

# plugins

# plugins=(git zsh-syntax-highlighting)
plugins=(git)

# nord dir colors
# test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

# attaches tmux to the last session; creates a new session if none exists.
alias t='tmux attach || tmux new-session'

# attaches tmux to a session
alias ta='tmux attach -t'

# creates a new session
alias tn='tmux new-session'

# lists all ongoing sessions
alias tl='tmux list-sessions'

source $ZSH/oh-my-zsh.sh
