export EDITOR=vim
export PAGER=less
export LESS=RSM

if [ -f "$HOME/.cargo/env" ]; then
    . "$HOME/.cargo/env"
fi

if [ -f "/opt/zig" ]; then
    export PATH=$PATH:/opt/zig
fi
