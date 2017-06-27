export PATH="$HOME/bin:$ZSH/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"


if [[ $OSTYPE == darwin* ]];
then
    launchctl setenv PATH "$PATH"
fi