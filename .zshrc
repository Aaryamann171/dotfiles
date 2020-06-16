export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Path to custom scripts
PATH="$HOME/my_scripts:$PATH"

export PATH
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

ZSH_THEME="alanpeabody"

#fixes rotation
alias fr='xrandr -o normal && exit'

#convers the first instance of webp it find in the directory to png
alias conv='file=$(ls *.webp | head -n 1); dwebp $file -o ${file%%.webp}.png; rm $file'

#restarts wifi
alias wr='nmcli radio wifi off && figlet reseting wifi && sleep 2 && nmcli radio wifi on && exit'

#toggle trackpad status - script present in scripts folder
alias ttp=toggletrackpad

source $ZSH/oh-my-zsh.sh
source /home/oreo/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

