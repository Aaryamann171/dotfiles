# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n$ '

# set vim as default editor
export editor='vim'

# bind 'TAB:menu-complete'
# turn off beep boop
bind 'set bell-style none'

# tab complete
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
bind 'set menu-complete-display-prefix on'

# cycle through history based on characters already typed on the line
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# aliases
alias python=python3
alias mv="mv -iv"
alias cp="cp -riv"
alias mkdir="mkdir -vp"
alias ls="ls --color=auto"
alias grep='grep --color=auto'
alias conv='file=$(ls *.webp | head -n 1); dwebp $file -o ${file%%.webp}.png; rm $file'

# wsl related aliases
alias gvim="C:\\\Program\ Files\ \(x86\)\\\Vim\\\vim82\\\gvim.exe"
alias explorer='explorer.exe'
alias open='explorer.exe'
alias copy="clip.exe"
alias wd='cd /mnt/c/Users/aryan/'
alias lt="code /home/oreo/code/compe/leetcode"
alias dsa="code /home/oreo/code/grind/dsa"

# vi mode
set -o vi
bind '"jj":vi-movement-mode'
export editor='vim'

# history
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=erasedups:ignorespace

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# nvm stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# better colors
export COLORTERM=truecolor
export TERM="xterm-256color"
force_color_prompt=yes

# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo "[${BRANCH}${STAT}] "
	else
		echo ""
	fi
}

# get current status of git repo
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

export PS1="\[\e[34m\]\W\[\e[m\]\[\e[36m\] \`parse_git_branch\`\[\e[m\]❯ "
