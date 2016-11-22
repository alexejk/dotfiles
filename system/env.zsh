# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Editor
if (( $+commands[code] ))
then
  export EDITOR='code -w'
else
  export EDITOR='vi'
fi

