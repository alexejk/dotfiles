# GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )) && (( $+commands[brew] ))
then
  source `brew --prefix`/etc/grc.bashrc
elif (( $+commands[grc] ))
then
  GRC=`which grc`
  if [ "$TERM" != dumb ] && [ -n "$GRC" ]
  then
    alias colourify="$GRC -es --colour=auto"
    alias configure='colourify ./configure'
    alias diff='colourify diff'
    alias make='colourify make'
    alias gcc='colourify gcc'
    alias g++='colourify g++'
    alias as='colourify as'
    alias gas='colourify gas'
    alias ld='colourify ld'
    alias netstat='colourify netstat'
    alias ping='colourify ping'
    alias traceroute='colourify /usr/sbin/traceroute'
    alias head='colourify head'
    alias tail='colourify tail'
    alias dig='colourify dig'
    alias mount='colourify mount'
    alias ps='colourify ps'
    alias mtr='colourify mtr'
    alias df='colourify df'
  fi
fi


# Load dircolors settings
if [[ -a ~/.dir_colors ]]; then
  if (( $+commands[dircolors] ))
  then
    eval `dircolors ~/.dir_colors`
  else 
    if (( $+commands[gdircolors] )) then
      eval `gdircolors ~/.dir_colors`
    fi
  fi
fi