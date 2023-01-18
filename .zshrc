# Initialize starship
eval "$(starship init zsh)"

# Initialize direnv
eval "$(direnv hook zsh)"

# Initailize rbenv
eval "$(rbenv init - zsh)"

# Aliases
source ~/.config/zsh/aliases.zsh

# Plugins
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Work related
source ~/.config/zsh/work/devops-tools.zsh


# Use homebrew instal of ruby
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

# This will separate NPM & NVM between x86 and arm64, to avoid mixing package and dependency architectures (recipe for disaster)
export npm_config_cache="$HOME/.npm/$(arch)"

export NVM_DIR="$HOME/.nvm/$(arch)"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

