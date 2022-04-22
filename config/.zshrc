# instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# history
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=1000000
setopt inc_append_history
setopt histignorealldups
setopt hist_ignore_space
setopt hist_verify
function history-select() {
  local hist=$(history -n 1 | sk)
  if [ -n "$hist" ]; then
    BUFFER="$hist"
    CURSOR=$#BUFFER
  fi
}
zle -N history-select
bindkey '^r' history-select

# complement
autoload -Uz compinit
compinit
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# aliases
alias c="clear"
alias v="nvim"
alias t="tmux"
alias ta"tmux a"
alias d="docker"
alias ..="cd .."
alias grep="rg"
alias find="fd"
alias ps="procs"

alias ls="exa --icons"
alias la="exa -a --icons"
alias ll="exa -ahl --icons"
alias tree="exa -Thl --icons"

alias g="git"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -m"
alias gs="git status -sb"
alias gd="git diff"
alias gb="git branch -a"
alias gp="git push"
alias gch="git checkout"
alias gw="git worktree"
alias gl="git log --graph --oneline"
alias glog="git log --graph -n 10"
alias gsub="git submodule"
alias lg="lazygit"
alias gg="ghq get -p"

# pyenv
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# nodenv
eval "$(nodenv init -)"

# goenv
eval "$(goenv init -)"

# rbenv
eval "$(rbenv init -)"

# ghq
function ghq-fuzzy-finder() {
  local src=$(ghq list | sk --preview "exa -ahl --icons $(ghq root)/{}")
  if [ -n "$src" ]; then
    BUFFER="cd $(ghq root)/$src"
    CURSOR=$#BUFFER
  fi
}
zle -N ghq-fuzzy-finder
bindkey '^g' ghq-fuzzy-finder

# zoxide
eval "$(zoxide init zsh)"

# zinit
source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit ice depth=1; zinit light "romkatv/powerlevel10k"
zinit ice depth=1; zinit light 'chrissicool/zsh-256color'
zinit ice depth=1; zinit light 'zdharma-continuum/fast-syntax-highlighting'
zinit ice depth=1; zinit light 'zsh-users/zsh-autosuggestions'
zinit ice depth=1; zinit light 'zsh-users/zsh-completions'
zinit ice depth=1; zinit light "zsh-users/zsh-history-substring-search"

# shell
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

