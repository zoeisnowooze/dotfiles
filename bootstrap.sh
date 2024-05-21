#!/usr/bin/env bash

set -e

DOTFILES="$(dirname -- "$(readlink -f -- "$0")")"
echo "🐚 Installing dotfiles from '$DOTFILES'..."

mkdir -p ~/.config/wezterm
ln -sf "$DOTFILES/ackrc" ~/.ackrc
ln -sf "$DOTFILES/gitconfig" ~/.gitconfig
ln -sf "$DOTFILES/inputrc" ~/.inputrc
ln -sf "$DOTFILES/starship.toml" ~/.config/starship.toml
ln -sf "$DOTFILES/tmux.conf" ~/.tmux.conf
ln -sf "$DOTFILES/wezterm.lua" ~/.config/wezterm/wezterm.lua
ln -sf "$DOTFILES/zshenv" ~/.zshenv
ln -sf "$DOTFILES/zshrc" ~/.zshrc


### Vim

if ! (command -v dpkg-query >/dev/null 2>&1 && dpkg-query --list vim >/dev/null 2>&1); then
    sudo apt install vim
fi

if [ ! -d ~/.vim ]; then
    git clone --quiet https://github.com/zoeisnowooze/dotvim.git ~/.vim
    ln -sf ~/.vim/vimrc ~/.vimrc
else
    git -C ~/.vim pull --quiet
fi
mkdir -p ~/.config/coc/
vim +'PlugInstall --sync' +qa


### Oh My Zsh!

if [ ! -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc
fi
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
fi
if [ ! -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
fi
mkdir -p ~/.oh-my-zsh/custom/themes
ln -sf "$DOTFILES/themes/witchhazelhypercolor.zsh-theme" ~/.oh-my-zsh/custom/themes/witchhazelhypercolor.zsh-theme


### Starship

if ! [ -x "$(command -v starship)" ]; then
    sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- -y
fi
