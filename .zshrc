export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="alanpeabody"
source $ZSH/oh-my-zsh.sh
export TERM=xterm-256color

#fixes rotation
alias fr='xrandr -o normal && exit'

#converts first occurenence of webp file to png
alias conv='file=$(ls *.webp | head -n 1); dwebp $file -o ${file%%.webp}.png; rm $file'

#restarts wifi
alias wr='nmcli radio wifi off && figlet reseting wifi && sleep 2 && nmcli radio wifi on && exit'
