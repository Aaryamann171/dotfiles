# better colors
export TERM="xterm-256color"

# path to custom scripts
PATH="$HOME/my_scripts:$PATH"
PATH="$HOME/.local/bin:$PATH"
export PATH

# fixes overwrite bug 
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# pure zsh prompt
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure
PURE_CMD_MAX_EXEC_TIME=3000

# highlights dirs during tab completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# reloads zsh
alias update='source ~/.zshrc'

# use python3 only
alias python='python3'

# fixes rotation
alias fr='xrandr -o normal && exit'

# convers webp to png
alias conv='file=$(ls *.webp | head -n 1); dwebp $file -o ${file%%.webp}.png; rm $file'

# restarts wifi
alias wr='nmcli radio wifi off && figlet reseting wifi && sleep 2 && nmcli radio wifi on'

# ls to show colors
alias ls='ls --color'

# show colors
alias print256='for i in {1..256}; do print -P "%F{$i}Color : $i"; done;'

# qol alias
alias mv="mv -iv"
alias cp="cp -riv"
alias mkdir="mkdir -vp"

# attaches tmux to the last session; creates a new session if none exists.
alias t='tmux attach || tmux new-session'

# attaches tmux to a session
alias ta='tmux attach -t'

# creates a new session
alias tn='tmux new-session'

# lists all ongoing sessions
alias tl='tmux list-sessions'

# ctrl + arrow to skip words
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

# preserve history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
