# Setup fzf
# ---------
if [[ ! "$PATH" == */home/edurf/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/edurf/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/edurf/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/edurf/.fzf/shell/key-bindings.zsh"
