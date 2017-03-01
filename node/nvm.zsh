if (( $+commands[nvm] )) 
then
    # Ensure NVM work folder exists
    mkdir -p "$HOME/.nvm"

    export NVM_DIR="$HOME/.nvm"
    source "/usr/local/opt/nvm/nvm.sh"
fi