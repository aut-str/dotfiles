export EDITOR="vim"

# .local/bin
if [ -d ${HOME}/.local ]; then
    export PATH=${HOME}/.local/bin:${PATH}
fi

# anyenv
if [ -d ${HOME}/.anyenv ]; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    export ANYENV_ROOT=$HOME/.anyenv
    eval "$(anyenv init -)"
fi

# poetry
if [ -d ${HOME}/.poetry ]; then
    export PATH="$HOME/.poetry/bin:$PATH"
fi

# OS-dependent settings
DOTFILES="${HOME}/dotfiles"
[ -f $DOTFILES/.zshenv_`uname` ] && . $DOTFILES/.zshenv_`uname`
