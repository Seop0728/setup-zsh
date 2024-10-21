#!/bin/bash

# install packages
sudo apt update
sudo apt install -y zsh curl git fonts-powerline

# Oh My Zsh
RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Default Shell
sudo chsh -s $(which zsh) $USER

# Oh My Zsh - plugin(Syntax Highlighting, Autosuggestions)
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# fzf 
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

# bat
sudo apt install -y bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

# exa
sudo apt install -y exa

# .zshrc
cat << EOF > ~/.zshrc
export ZSH="\$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git colored-man-pages zsh-syntax-highlighting zsh-autosuggestions fzf kubectl docker)
source \$ZSH/oh-my-zsh.sh

# alias
alias ls='exa'
alias ll='exa -l'
alias la='exa -a'

alias cat='bat'

# PATH
export PATH="\$HOME/.local/bin:\$PATH"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
EOF

# zsh Start
echo 
echo "     Installation complete. Starting zsh..."
echo
exec zsh
