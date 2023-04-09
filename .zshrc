HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v

zstyle :compinstall filename '/home/edurf/.zshrc'

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-completions/zsh-completions.plugin.zsh

export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH
export PATH="$PATH:$(yarn global bin)"

alias ls="exa --icons"
alias lh="exa --icons -lha"
alias bat="bat --style=auto"
alias vtex="npx vtex"
alias vi="nvim"
alias aseprite="/mnt/c/Program\ Files\ \(x86\)/Steam/steamapps/common/Aseprite/Aseprite.exe"

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

source /opt/asdf-vm/asdf.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# pnpm
export PNPM_HOME="/home/edurf/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
# bun completions
[ -s "/home/edurf/.bun/_bun" ] && source "/home/edurf/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1

export LIBGL_ALWAYS_INDIRECT=1

export SPACESHIP_GIT_STATUS_ADDED="%F{yellow}•%F{red}"
export SPACESHIP_GIT_STATUS_UNTRACKED="%F{blue}•%F{red}"
export SPACESHIP_GIT_STATUS_DELETED="%F{green}•%F{red}"
export SPACESHIP_GIT_STATUS_MODIFIED="%F{red}•%F{red}"



eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
