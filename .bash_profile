# IMPORTS
if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

# EXPORTS
export PATH="$PATH:/opt/homebrew/bin"
export PS1='\[\e[1m\e[38;2;209;154;102m\]\W\[\e[22m\e[38;2;240;99;114m\]$(git_status)\[\e[38;2;198;120;221m\] ❱\[\e[0m\] '
export BASH_SILENCE_DEPRECATION_WARNING=1
export PYTHONDONTWRITEBYTECODE=True
export HISTCONTROL=ignoreboth
export HISTSIZE=1000
export HISTFILESIZE=1000
export PYENV_ROOT="$HOME/.pyenv"

# ALIASES
alias ls="ls -G"
alias vim="nvim"
alias vi="nvim"

# INITIALIZATION
eval "$(pyenv init -)"
