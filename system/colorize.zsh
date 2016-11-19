# GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )) && (( $+commands[brew] ))
then
  source `brew --prefix`/etc/grc.bashrc
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