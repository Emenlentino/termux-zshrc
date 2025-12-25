# ⚡ Powerlevel10k Instant Prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 🧩 Plugin Sources
source ~/.zsh-plugins/zsh-defer/zsh-defer.plugin.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh-plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zsh-plugins/zsh-you-should-use/you-should-use.plugin.zsh
source ~/.zsh-plugins/zsh-autopair/autopair.zsh
source ~/.zsh-plugins/zsh-better-npm-completion/zsh-better-npm-completion.plugin.zsh

# 🔑 Key Bindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# 🧠 Completion & FZF
fpath+=~/.zsh-plugins/zsh-completions                                                                     zstyle ':completion:*' menu-select yes
zstyle ':fzf-tab:*' switch-word yes

# 🧪 Hacker Aliases
alias ls='lsd --color=always'
alias cat='bat'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias matrix='cmatrix -u 4 -C green'
alias banner='figlet "Emenlentino Exploit" | lolcat && neofetch'

# 🧭 Core Script
core="$HOME/core-termux"
INITIAL_PATH=$(pwd)
[[ -f "${core}/update.sh" ]] && source "${core}/update.sh" > >(tee /dev/tty) 2>&1
cd "${INITIAL_PATH}"

# 🎨 Hacker Prompt (Green on Black)
export ZSH_THEME="powerlevel10k/powerlevel10k"
PS1='%F{green}%n@%m %F{cyan}%~%f %# '

# 🧰 Load Powerlevel10k Config
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# 🧨 ASCII Splash on Startup
figlet "Emenlentino Exploit" | lolcat
neofetch

# 🔁 Reload ASCII on Clear
function clear() {
  command clear
  figlet "Emenlentino Exploit" | lolcat
  neofetch
}
