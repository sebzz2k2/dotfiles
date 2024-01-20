# Setup fzf
# ---------
if [[ ! "$PATH" == */home/sebin/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/sebin/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/sebin/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/sebin/.fzf/shell/key-bindings.bash"
