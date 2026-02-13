# engrammer - htsn vi-mode keybindings
# h→down, t→up, s→left, n→right

# Ctrl+htsn for insert mode
bindkey '^h' down-line-or-history
bindkey '^t' up-line-or-history
bindkey '^s' vi-backward-char
bindkey '^n' vi-forward-char

# htsn for vicmd mode
bindkey -a 'h' down-line-or-history
bindkey -a 't' up-line-or-history
bindkey -a 's' vi-backward-char
bindkey -a 'n' vi-forward-char

# Handle $0 according to the standard:
# https://zdharma-continuum.github.io/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# New less versions will read this file directly
export LESSKEYIN="${0:h:A}/engrammer-less"

# Only run lesskey if less version is older than v582
less_ver=$(less --version | awk '{print $2;exit}')
autoload -Uz is-at-least
if ! is-at-least 582 $less_ver; then
  lesskey "$LESSKEYIN"
fi
