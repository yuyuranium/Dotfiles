[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# Plugins
typeset -A __Prompt
plug "yuyuranium/macOS-singularisart-prompt"
plug "hlissner/zsh-autopair"
plug "zsh-users/zsh-history-substring-search"
plug "zap-zsh/completions"

# Sources
plug "$HOME/.config/zsh/exports.zsh"
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/plugins.zsh"
# >>> xmake >>>
test -f "/home/yuyu/.xmake/profile" && source "/home/yuyu/.xmake/profile"
# <<< xmake <<<