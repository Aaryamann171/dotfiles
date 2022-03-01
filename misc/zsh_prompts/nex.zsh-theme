# nex.zsh-theme

if [[ "$TERM" != "dumb" ]] && [[ "$DISABLE_LS_COLORS" != "true" ]]; then
  MODE_INDICATOR="%{$fg_bold[red]%}❮%{$reset_color%}%{$fg[red]%}❮❮%{$reset_color%}"
  local return_status="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

  PROMPT='%{$fg_bold[cyan]%}%c$(git_prompt_info) %(!.%{$fg_bold[red]%}#.%{$fg_bold[green]%}❯)%{$reset_color%} '

  ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}git%{$reset_color%}:%{$fg[red]%}"
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_DIRTY=""
  ZSH_THEME_GIT_PROMPT_CLEAN=""

  RPROMPT='${return_status}$(git_prompt_status)%{$reset_color%}'

  ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%} on %{$fg_bold[yellow]%}\xee\x82\xa0 "
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[yellow]%}"
  ZSH_THEME_GIT_PROMPT_DIRTY=" %{$reset_color%}%{$fg_bold[red]%}!%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_CLEAN=""
  ZSH_THEME_GIT_PROMPT_BEHIND="⇣"
  ZSH_THEME_GIT_PROMPT_AHEAD="⇡"
  ZSH_THEME_GIT_PROMPT_UNTRACKED="…"
else
  MODE_INDICATOR="❮❮❮"
  local return_status="%(?::↵)"

  # PROMPT='%c$(git_prompt_info) %(!.#.❯) '
  # RPROMPT='${return_status}$(git_prompt_status)'
  PROMPT='%{$fg_bold[cyan]%}%c$(git_prompt_info) %(!.%{$fg_bold[red]%}#.%{$fg_bold[green]%}❯)%{$reset_color%} '

  ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%} on %{$fg_bold[yellow]%}\xee\x82\xa0 "
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[yellow]%}"
  ZSH_THEME_GIT_PROMPT_DIRTY=" %{$reset_color%}%{$fg_bold[red]%}*%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_CLEAN=""
  ZSH_THEME_GIT_PROMPT_BEHIND="⇣"
  ZSH_THEME_GIT_PROMPT_AHEAD="⇡"
  ZSH_THEME_GIT_PROMPT_UNTRACKED="…"
fi
