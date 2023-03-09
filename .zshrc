# Env vars
export PATH=/opt/homebrew/opt/openssl@1.1/bin:/opt/homebrew/bin:$PATH
export DEVOPS_TOOLS_DIR=$HOME/Documents/devops-tools
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export KUBECONFIG_DIR=~/.config/kubernetes/
export XDG_CONFIG_HOME=~/.config/
export QA_DB_REMOTE_PORT=15432
export QA_REPORTING_DB_REMOTE_PORT=15433
export QA2_DB_REMOTE_PORT=15432
export QA2_REPORTING_DB_REMOTE_PORT=15433
export AWS_CA_BUNDLE=$(brew --prefix)/etc/ca-certificates/cert.pem
export AWS_VAULT_PROMPT=ykman

# Android
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export JAVA_HOME=$(/usr/libexec/java_home)

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
source $DEVOPS_TOOLS_DIR/toolsrc

# This will separate NPM & NVM between x86 and arm64, to avoid mixing package and dependency architectures (recipe for disaster)
export npm_config_cache="$HOME/.npm/$(arch)"

export NVM_DIR="$HOME/.nvm/$(arch)"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

