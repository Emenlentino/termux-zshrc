#!/data/data/com.termux/files/usr/bin/bash
# 🚀 Termux ZSH Advanced Setup Script
# Installs all dependencies for custom .zshrc configuration

echo "⚡ Starting Termux ZSH setup..."

# Update packages
pkg update -y && pkg upgrade -y

# Core tools
pkg install -y zsh git vim fzf nodejs lsd bat cmatrix figlet neofetch

# lolcat via Ruby gem
pkg install -y ruby
gem install lolcat

# Powerlevel10k
if [ ! -d "$HOME/powerlevel10k" ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
fi

# ZSH Plugins directory
mkdir -p ~/.zsh-plugins

# Plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh-plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh-plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-history-substring-search ~/.zsh-plugins/zsh-history-substring-search
git clone https://github.com/MichaelAquilina/zsh-you-should-use ~/.zsh-plugins/zsh-you-should-use
git clone https://github.com/hlissner/zsh-autopair ~/.zsh-plugins/zsh-autopair
git clone https://github.com/lukechilds/zsh-better-npm-completion ~/.zsh-plugins/zsh-better-npm-completion
git clone https://github.com/romkatv/zsh-defer ~/.zsh-plugins/zsh-defer

echo "✅ All dependencies installed!"
echo "👉 Now copy your .zshrc into ~/.zshrc and run:"
echo "   source ~/.zshrc"
