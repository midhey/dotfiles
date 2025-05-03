# ------------------------------
# 🚀 1. Instant Prompt (Powerlevel10k)
# ------------------------------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# ------------------------------
# ⚙️ 2. Пути
# ------------------------------

fpath_add() {
  for dir in "${fpath[@]}"; do
    [[ "$dir" == "$1" ]] && return
  done
  fpath=("$1" "${fpath[@]}")
}

path_add() {
  case ":$PATH:" in
    *":$1:"*) ;;  # уже есть — ничего не делаем
    *) PATH="$1:$PATH" ;;
  esac
}

case "$(uname)" in
  Darwin)
    path_add "/opt/homebrew/bin"
    path_add "$HOME/.composer/vendor/bin"
    path_add "$HOME/.local/bin"
    
      fpath_add "$HOME/.docker/completions"
    ;;
  Linux)
    path_add "$HOME/.composer/vendor/bin"
    path_add "$HOME/.local/bin"
    ;;
esac

export TERM="xterm-256color"


# ------------------------------
# 🎨 3. Тема Oh My Zsh (Powerlevel10k)
# ------------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=244'

# ------------------------------
# 📦 4. Плагины
# ------------------------------
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  tmux
  z
)

source $ZSH/oh-my-zsh.sh

# ------------------------------
# 🛠️ 5. Алиасы
# ------------------------------
alias lt='eza -lah --git --icons --color=always'
alias ltree='eza --tree --level=2 --icons --git'
alias ..='cd ..'
alias ...='cd ../..'
alias cls='clear'
alias ll='ls -la'
alias gs='git status'
alias glo='git log --oneline'
alias gd='git diff'
alias gpl='git pull'
alias gp='git push'
alias ga='git add'
alias gc='git commit -m'
alias gcam='git commit -am'
alias gco='git checkout'
alias gcheck='git branch --merged | egrep -v "(^\*|master|dev)"'
alias gclean='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'

alias mrf='glab mr create -f -t -y "$1" -a "midhey" --reviewer "avdmk"'

# ------------------------------
# 🖥️ 6. SSH
# ------------------------------
# 

# ------------------------------
# Автозапуск Tmux только для интерактивных сеансов
# ------------------------------
# if [ -z "$TMUX" ] && [ -n "$PS1" ]; then
#  tmux attach || tmux new
# fi

# ------------------------------
# 🪄 7. Дополнительные настройки
# ------------------------------
export EDITOR="nvim"
export VISUAL="nvim"

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

autoload -Uz compinit && compinit
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
export LANG=en_US.UTF-8

# Created by `pipx` on 2025-03-18 13:11:38
