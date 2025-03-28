export TERM=xterm
export EDITOR=nvim
export PATH=$PATH:$HOME/.local/bin
if [[ -n "$IN_NIX_SHELL" ]]; then
  export PS1="($name) $PS1"
fi
