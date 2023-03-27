# zsh-history-substring-search
source "$ZAP_PLUGIN_DIR/zsh-history-substring-search/zsh-history-substring-search.zsh"

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

export HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
