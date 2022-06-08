# OS-dependent
case ${OSTYPE} in
  darwin*)
    # ここに Mac 向けの設定
    alias ls='gls --color=auto'
    alias cp="gcp"
    ;;
  linux*)
    alias ls='ls --color=auto'
    ;;
esac

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias cp='cp -ir'
alias mkdir='mkdir -p'

# git
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gl='git log'
alias gloo='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gm='git merge'
alias gp='git push'
alias gpl='git pull'
alias gplo='git pull origin'
alias gplom='git pull origin master'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gr='git rebase'
alias gs='git status'

# poetry
if type "poetry" > /dev/null 2>&1; then
    alias pp='poetry run python'
    alias poe='poetry run poe'
fi

# tmux
tt () {
    tmux attach-session -t default || tmux new-session -s default
}
