# FUNCTIONS
function parse_git_branch() {
    branch=$(git branch --show-current 2>/dev/null)
    if [ -n "$branch" ]; then
        status=""
        
        # Check if there are uncommitted changes (dirty state)
        if [[ -n $(git status --porcelain 2>/dev/null) ]]; then
            status+="•"  # Dirty repository
        fi
        
        # Check if the branch is ahead or behind the remote
        if git rev-parse --abbrev-ref @{u} >/dev/null 2>&1; then
            upstream=$(git rev-parse --abbrev-ref @{u})
            
            # Find how many commits ahead or behind we are
            ahead_count=$(git rev-list --count HEAD.."$upstream" --left-right | awk '{print $1}')
            behind_count=$(git rev-list --count HEAD.."$upstream" --left-right | awk '{print $2}')

            # Ensure the variables are not empty and default them to 0 if needed
            ahead_count=${ahead_count:-0}
            behind_count=${behind_count:-0}

            # Add to status string if ahead or behind
            if [ "$ahead_count" -gt 0 ]; then
                status+="↑$ahead_count"
            fi
            if [ "$behind_count" -gt 0 ]; then
                status+="↓$behind_count"
            fi
        fi

        # Display the branch name with the status
        echo "$branch$status"
    fi
}

# Customize the PS1 variable to include the Git branch and status
export PS1='\u@\h \W$(parse_git_branch)\$ '

# EXPORTS
export PATH="$PATH:/opt/homebrew/bin"
export PS1='\[\e[38;2;209;154;102m\]\W\[\e[38;2;198;120;221m\] $(parse_git_branch) ❱\[\e[0m\] '
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
