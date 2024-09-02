# Env vars
export PATH=/opt/homebrew/opt/openssl@1.1/bin:/opt/homebrew/bin:$PATH
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export KUBECONFIG_DIR=~/.config/kubernetes/
export XDG_CONFIG_HOME=~/.config/

# Initialize starship
eval "$(starship init zsh)"

# Initialize direnv
# eval "$(direnv hook zsh)"

# Aliases
source ~/.config/zsh/aliases.zsh

# Plugins
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# This will separate NPM & NVM between x86 and arm64, to avoid mixing package and dependency architectures (recipe for disaster)
export npm_config_cache="$HOME/.npm/$(arch)"

export NVM_DIR="$HOME/.nvm/$(arch)"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/feng/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# postgres
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
