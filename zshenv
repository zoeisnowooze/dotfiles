export EDITOR=vim
export PAGER=less
export LESS=RSM

if [ -f "$HOME/.cargo/env" ]; then
    . "$HOME/.cargo/env"
fi
