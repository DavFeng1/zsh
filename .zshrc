# Initialize starship
eval "$(starship init zsh)"


# Aliases
source ~/.config/zsh/aliases.zsh

# ZSH-VIM-MODE start in insert mode
function zvm_config() {
	ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT
	# ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
}

# Plugins
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# This is making shit slow
# source ~/.config/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh


# ENV VARS
export STARSHIP_CONFIG=~/.config/starship/starship.toml

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)



export DISPLAY=$(ip route list default | awk '{print $3}'):0
export LIBGL_ALWAYS_INDIRECT=1
