export PS1="\[\033[36m\]\u@\h: \[\033[32m\]\w \[$(git branch 2>/dev/null)\]\012\[\033[00m\]-> \[$(tput sgr0)\]"
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
alias mv="mv -iv"
alias cp="cp -riv"
alias mkdir="mkdir -vp"
