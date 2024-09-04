function git_status() {
    branch=$(git branch --show-current 2>/dev/null)
    if [ -z "$branch" ]; then
        return
    fi

    status=""

    if [ -n "$(git status --porcelain 2>/dev/null)" ]; then
        status+="◇"
    fi

    upstream=$(git rev-parse --abbrev-ref @{u} 2>/dev/null)
    if [ -n "$upstream" ]; then
        ahead_behind=$(git rev-list --left-right --count HEAD..."$upstream")

        ahead_count=$(echo "$ahead_behind" | awk '{print $1}')
        behind_count=$(echo "$ahead_behind" | awk '{print $2}')

        [ "$ahead_count" -gt 0 ] && status+="↑"
        [ "$behind_count" -gt 0 ] && status+="↓"
    fi

    echo " $branch$status"
}
