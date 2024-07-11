# Initialize starship
eval "$(starship init zsh)"

# Initalize direnv
eval "$(direnv hook zsh)"

# Initialize homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Aliases
source ~/.config/zsh/aliases.zsh

# Plugins
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Env Vars
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"

# For python - C compilation openBlas
export LDFLAGS="-L/opt/homebrew/opt/openblas/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openblas/include"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

