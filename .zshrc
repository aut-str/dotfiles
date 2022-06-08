# OS-dependent settings
DOTFILES="${HOME}/dotfiles"
[ -f $DOTFILES/.zshrc_`uname` ] && . $DOTFILES/.zshrc_`uname`

# # make less more friendly for non-text input files, see lesspipe(1)
# [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
# case "$TERM" in
#     xterm-color|*-256color) color_prompt=yes;;
# esac

# # source profile.d
# if [ -d /etc/profile.d ]; then
#   for i in /etc/profile.d/*.sh; do
#     if [ -r $i ]; then
#       . $i
#     fi
#   done
#   unset i
# fi

# source all *.zsh files
ZSH_HOME="${HOME}/.zsh"

if [ -d $ZSH_HOME -a -r $ZSH_HOME -a -x $ZSH_HOME ]; then
    for i in $ZSH_HOME/*; do
        [[ ${i##*/} = *.zsh ]] && [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi
