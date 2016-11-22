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

    # Some of these might not even be present!
    if (( $+commands[diff] )); then; alias diff='colourify diff'; fi
    if (( $+commands[make] )); then; alias make='colourify make'; fi
    if (( $+commands[gcc] )); then; alias gcc='colourify gcc'; fi
    if (( $+commands[g++] )); then; alias g++='colourify g++'; fi
    if (( $+commands[as] )); then; alias as='colourify as'; fi
    if (( $+commands[gas] )); then; alias gas='colourify gas'; fi
    if (( $+commands[ld] )); then; alias ld='colourify ld'; fi
    if (( $+commands[netstat] )); then; alias netstat='colourify netstat'; fi
    if (( $+commands[traceroute] )); then; alias traceroute='colourify /usr/sbin/traceroute'; fi
    if (( $+commands[head] )); then; alias head='colourify head'; fi
    if (( $+commands[tail] )); then; alias tail='colourify tail'; fi
    if (( $+commands[dig] )); then; alias dig='colourify dig'; fi
    if (( $+commands[mount] )); then; alias mount='colourify mount'; fi
    if (( $+commands[ps] )); then; alias ps='colourify ps'; fi
    if (( $+commands[mtr] )); then; alias mtr='colourify mtr'; fi
    if (( $+commands[df] )); then; alias df='colourify df'; fi

    # Ping is always ping :)
    alias ping='colourify ping'
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