fpath=(
  ${HOME}/.zsh/completions
  ${fpath}
)
autoload -Uz compinit
compinit
export PATH=$HOME/.nodebrew/current/bin:$PATH
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH="$GOPATH/bin:$PATH"
PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
# Pureプロンプト
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure
alias tf='terraform'
alias k=kubectl
export AWS_PROFILE=administrator