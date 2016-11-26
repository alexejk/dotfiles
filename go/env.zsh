
# Expose to GUI (on mac)
if [[ $OSTYPE == darwin* ]];
then
    launchctl setenv GOPATH "$GOPATH"
fi
