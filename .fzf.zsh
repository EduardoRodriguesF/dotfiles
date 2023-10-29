# Setup fzf
# ---------
if [[ ! "$PATH" == */home/edurf/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/edurf/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$HOME/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "$HOME/.fzf/shell/key-bindings.zsh"
