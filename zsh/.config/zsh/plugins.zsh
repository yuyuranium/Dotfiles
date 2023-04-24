# zsh-history-substring-search
source "$ZAP_PLUGIN_DIR/zsh-history-substring-search/zsh-history-substring-search.zsh"

case "$(uname -s)" in
  Darwin)
    bindkey '^[[A' history-substring-search-up
    bindkey '^[[B' history-substring-search-down
    ;;

  Linux)
    bindkey "$terminfo[kcuu1]" history-substring-search-up
    bindkey "$terminfo[kcud1]" history-substring-search-down
    ;;

  *)
    # echo 'Other OS'
    ;;
esac


export HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
