[ -n "$PS1" ] && source ~/.bash_profile

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi