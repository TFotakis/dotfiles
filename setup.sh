#!/bin/sh

set -e


SCRIPT_DIR=$(dirname "$(realpath $0)")
CURRENT_DIR=$(pwd)


rm -rf ~/.config/tmux
rm -rf ~/.config/nvim
rm -rf ~/.config/oh-my-zsh
rm -rf ~/.zshrc
rm -rf $SCRIPT_DIR/submodules
rm -rf $SCRIPT_DIR/config/tmux/tmux.conf
rm -rf $SCRIPT_DIR/config/oh-my-zsh


cd $SCRIPT_DIR/config


ln -s $SCRIPT_DIR/config/nvim ~/.config/nvim


git clone git@github.com:gpakosz/.tmux.git $SCRIPT_DIR/submodules/oh-my-tmux
ln -s $SCRIPT_DIR/submodules/oh-my-tmux/tmux.conf $SCRIPT_DIR/config/tmux/tmux.conf
ln -s $SCRIPT_DIR/config/tmux ~/.config/tmux


git clone git@github.com:ohmyzsh/ohmyzsh.git $SCRIPT_DIR/config/oh-my-zsh
git clone --depth=1 git@github.com:romkatv/powerlevel10k.git $SCRIPT_DIR/config/oh-my-zsh/custom/themes/powerlevel10k
git clone git@github.com:zdharma-continuum/fast-syntax-highlighting.git $SCRIPT_DIR/config/oh-my-zsh/custom/plugins/fast-syntax-highlighting
git clone git@github.com:zsh-users/zsh-history-substring-search.git $SCRIPT_DIR/config/oh-my-zsh/custom/plugins/zsh-history-substring-search
git clone git@github.com:zsh-users/zsh-autosuggestions.git $SCRIPT_DIR/config/oh-my-zsh/custom/plugins/zsh-autosuggestions
ln -s $SCRIPT_DIR/config/oh-my-zsh ~/.config/oh-my-zsh
ln -s $SCRIPT_DIR/config/.zshrc ~/.zshrc
ln -s $SCRIPT_DIR/config/.p10k.zsh ~/.p10k.zsh


cd $CURRENT_DIR
