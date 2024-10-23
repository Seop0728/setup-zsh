#!/bin/bash

# install packages
sudo apt update
sudo apt install -y zsh curl git fonts-powerline unzip

# Nerd Fonts(JetBrainsMono)
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -fLO https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip
unzip JetBrainsMono.zip
rm JetBrainsMono.zip
fc-cache -fv

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

# lsd
ARCH=$(uname -m)
if [ "$ARCH" = "arm64" ]; then
    curl -fsSL -o lsd.deb https://github.com/lsd-rs/lsd/releases/download/v1.1.5/lsd_1.1.5_arm64.deb
elif [ "$ARCH" = "x86_64" ]; then
    curl -fsSL -o lsd.deb https://github.com/lsd-rs/lsd/releases/download/v1.1.5/lsd_1.1.5_amd64.deb
fi
sudo dpkg -i lsd.deb

# .zshrc
cat << 'EOF' > ~/.zshrc
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git colored-man-pages zsh-syntax-highlighting zsh-autosuggestions fzf kubectl docker)
source $ZSH/oh-my-zsh.sh

# alias
alias ls='lsd'
alias ll='lsd -l'
alias la='lsd -a'
alias cat='bat -pp'

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
EOF

# cd HOME
cd ~

# zsh Start
echo 
echo "     Installation complete. Starting zsh..."
echo
exec zsh