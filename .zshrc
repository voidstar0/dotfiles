git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

mkcd() {
  mkdir -p -- "$1" && cd -P -- "$1"
}

setopt prompt_subst

source ~/.zsh_plugins.sh

export GOPATH=$HOME/go
export PATH=/usr/local/go/bin:$GOPATH/bin:$HOME/bin:/usr/local/bin:$PATH

alias ls="gls --color=always"

alias g=git
alias gcm="git commit"
alias gcmi="git commit -m 'Initial Commit'"
alias gaa="git add ."

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/veritas/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/veritas/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/veritas/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/veritas/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
