HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep

bindkey -v

autoload -Uz compinit && compinit

zstyle :compinstall filename '$HOME/.zshrc'
# Case-insenstive whenever there is no case-sensitive matches
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-completions/zsh-completions.plugin.zsh

export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH
export PATH="$HOME/.tmuxifier/bin:$PATH"

export DENO_INSTALL="/Users/edurf/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export PATH=$PATH:/usr/local/git/bin:/usr/local/bin

alias ls="exa --icons"
alias lh="exa --icons -lha"
alias bat="bat --style=auto"
alias v="nvim"
alias please="sudo !!"

# WSL only
alias aseprite="/mnt/c/Program\ Files\ \(x86\)/Steam/steamapps/common/Aseprite/Aseprite.exe"

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

source /opt/homebrew/opt/asdf/libexec/asdf.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

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
