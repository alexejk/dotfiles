if (( $+commands[go] )) 
then
    unset GOROOT # Unset it to ensure go env does not provide faulty result
    export GOROOT=`go env GOROOT`
fi

# Expose to GUI (on mac)
if [[ $OSTYPE == darwin* ]];
then
    launchctl setenv GOPATH "$GOPATH"
    launchctl setenv GOROOT "$GOROOT"
fi
