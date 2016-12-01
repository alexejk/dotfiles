if (( $+commands[go] )) 
then
    export GOROOT=`go env GOROOT`
fi

# Expose to GUI (on mac)
if [[ $OSTYPE == darwin* ]];
then
    launchctl setenv GOPATH "$GOPATH"
    launchctl setenv GOROOT "$GOROOT"
fi
