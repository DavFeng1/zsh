# Initialize starship
eval "$(starship init zsh)"

# Initalize direnv
eval "$(direnv hook zsh)"


# Aliases
source ~/.config/zsh/aliases.zsh

# Plugins
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# Work related
source ~/.config/zsh/work/devops-tools.zsh

export STARSHIP_CONFIG=~/.config/starship/starship.toml
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# WSL 2
export DISPLAY=$(ip route list default | awk '{print $3}'):0
export LIBGL_ALWAYS_INDIRECT=1

