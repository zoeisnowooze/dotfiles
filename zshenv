export EDITOR=vim
export PAGER=less
export LESS=RSM

if [ -f "$HOME/.cargo/env" ]; then
    . "$HOME/.cargo/env"
fi

if [ -f "/opt/zig" ]; then
    export PATH=$PATH:/opt/zig
fi

if [ -d "$HOME/.pyenv" ]; then
    export PYENV_ROOT="$HOME/.pyenv"
    command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
fi

export CARGO_MOMMYS_MOODS="chill/ominous/thirsty/yikes"
