# Aliases

alias v="nvim"
alias g="git"
alias aliases="v ~/.config/zsh/aliases.zsh"

# Open config
alias zshroot="v ~/.zshrc"
alias zshrc="v ~/.config/zsh/.zshrc"
alias starshiprc="v ~/.config/starship/starship.toml"
alias vimrc="v ~/.config/nvim/init.vim"
alias neofetchrc="v ~/.config/neofetch/config.conf"
alias fdignore="v ~/.config/fd/ignore/.fdignore"

# Goto config
alias vimdir="cd ~/.config/nvim"
alias zshdir="cd ~/.config/zsh"
alias starshipdir="cd ~/.config/starship"
alias neofetchdir="cd ~/.config/neofetch"

if uname -r | grep -q "Darwin" ; then
  alias fpdir="cd ~/Documents/first-principles/"
  alias dadir="cd ~/Documents/data-analysis/"
  alias docs="cd ~/Documents"
elif uname | grep -q "Linux" ; then
  alias fpdir="cd ~/documents/first-principles/"
  alias dadir="cd ~/documents/data-analysis/"
  alias docs="cd ~/documents"
else
  echo 'Unknown OS!'
fi


benchmark () {
   ts '[%Y-%m-%d %H:%M:%S]'
}

