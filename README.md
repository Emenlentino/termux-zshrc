#⚡ Termux ZSH Configuration

A custom .zshrc setup for Termux featuring Powerlevel10k, essential ZSH plugins, colorful ASCII splash screens, and hacker‑style aliases.  
This repo also includes an all‑in‑one installer script to set up everything automatically.

---

🚀 Installation Guide

1. Clone the Repository
`bash
git clone https://github.com/Emenlentino/termux-zshrc.git
cd termux-zshrc
`

2. Run the Installer
`bash
chmod +x install.sh
./install.sh
`

This will install all required dependencies, plugins, and themes.

3. Apply the Configuration
Copy the .zshrc file from this repo into your home directory:
`bash
cp .zshrc ~/.zshrc
source ~/.zshrc
`

---

📦 Dependencies

The installer script covers all of these automatically:

- Core Tools  
  - zsh, git, vim, fzf, nodejs
- Visual / Utility Tools  
  - lsd, bat, cmatrix, figlet, neofetch, lolcat (via Ruby gem)
- Theme  
  - Powerlevel10k
- Plugins (cloned into ~/.zsh-plugins/)  
  - zsh-autosuggestions  
  - zsh-syntax-highlighting  
  - zsh-history-substring-search  
  - zsh-you-should-use  
  - zsh-autopair  
  - zsh-better-npm-completion  
  - zsh-defer  

---

🧩 Features

- Powerlevel10k Prompt for a sleek hacker look
- Plugins for autosuggestions, syntax highlighting, history search, npm completion, and more
- Aliases for faster commands:
  - ls → lsd
  - cat → bat
  - matrix → cmatrix
  - banner → ASCII splash with figlet + lolcat + neofetch
- ASCII splash screen on startup and when clearing the terminal
- Custom key bindings for history search
- FZF completion for faster navigation

---

📸 Preview

On startup you’ll see:
`bash
figlet "Emenlentino Exploit" | lolcat
neofetch
`

---

🔧 Advanced Installer Script

This repo includes install.sh which:
- Updates Termux packages
- Installs all dependencies
- Clones Powerlevel10k
- Clones all required ZSH plugins

Run it once and you’re ready to go.

---

🧠 Author

Emenelentino  
GitHub: Emenelentino

---

📜 License

This project is open-source under the MIT License.

---
