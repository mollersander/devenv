# Zsh config
HISTFILE=$HOME/.zsh_history
SAVEHIST=1000
HISTSIZE=100

# Zsh fix ctrl+arrow movement
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Zsh Pure theme config
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure
prompt_newline='%666v'
PROMPT=" $PROMPT"

# Zsh autosuggestions plugin
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666,bold"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Aliases
alias gs="git status"
alias gd="git diff"
