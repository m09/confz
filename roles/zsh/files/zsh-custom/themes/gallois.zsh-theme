# Depends on the git plugin for work_in_progress()

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

#Customized git status, oh-my-zsh currently does not allow render dirty status before branch
git_custom_status() {
  local cb=$(git_current_branch)
    if [ -n "$cb" ]; then
        echo "$(parse_git_dirty)%{$fg_bold[yellow]%}$(work_in_progress)%{$reset_color%}$ZSH_THEME_GIT_PROMPT_PREFIX$(git_current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
	  fi
	  }

# RVM component of prompt
ZSH_THEME_RVM_PROMPT_PREFIX="%{$fg[red]%}["
ZSH_THEME_RVM_PROMPT_SUFFIX="]%{$reset_color%}"

# Combine it all into a final right-side prompt
RPS1='$(git_custom_status)$(ruby_prompt_info) $EPS1'


function hostname2color() {
  local hostname="$1"
  local hash="$(printf "%s" "$hostname" | md5sum | cut -d ' ' -f 1)"
  local shorthash="${hash:0:8}"
  local decimal="$(printf "%d" "0x$shorthash")"
  # restrict to light colors
  # https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg
  local mod=$(($decimal % 91 + 111))
  echo "$mod"
}

pcolor="$(hostname2color "$(hostname)")"

PROMPT='%{$fg[cyan]%}[%F{$pcolor%}%B%M:%f%b%{$fg[cyan]%}%~% ]%(?.%{$fg[green]%}.%{$fg[red]%})%B$%b '
