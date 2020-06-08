# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
PATH="$HOME/my_scripts:$PATH"
export PATH

export TERM="xterm-256color"

ZSH_THEME="alanpeabody"

source $ZSH/oh-my-zsh.sh

#fixes rotation
alias fr='xrandr -o normal && exit'

#convers the first instance of webp it find in the directory to png
alias conv='file=$(ls *.webp | head -n 1); dwebp $file -o ${file%%.webp}.png; rm $file'

#restarts wifi
alias wr='nmcli radio wifi off && figlet reseting wifi && sleep 2 && nmcli radio wifi on && exit'

#toggle trackpad status
alias ttp='cd /home/oreo/scripts/ && ./ttp.sh && exit'
