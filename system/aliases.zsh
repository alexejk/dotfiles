# System aliases
if [[ $OSTYPE == darwin* ]];
then
    # OSX ls command doesnt handle --color flag, but gnu coreutils ls does!
    if (( $+commands[gls] ))
    then
        alias ls="gls --color"
    fi
else
    alias ls="ls --color"
fi