# System aliases
alias ls="ls --color"

# Make dircolors -> gdircolors on OSX
if [[ $OSTYPE == darwin* ]];
then
    if (( $+commands[gdircolors] ))
    then
        alias dircolors="gdircolors"
    fi
fi