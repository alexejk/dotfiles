# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# allow cd to ..
zstyle ':completion:*' special-dirs true

fpath=(/usr/local/share/zsh-completions $fpath)

if [[ -a /usr/local/share/zsh/site-functions/_awless ]]; then
  source /usr/local/share/zsh/site-functions/_awless
fi
