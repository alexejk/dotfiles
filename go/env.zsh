
# GOPATH (it's hidden, we try to use gb)
export GOPATH=$HOME/.go

# Add Go to PATH
export PATH=$PATH:/usr/local/opt/go/libexec/bin:$GOPATH/bin

# Expose to GUI (on mac)
if [[ $OSTYPE == darwin* ]];
then
    launchctl setenv GOPATH "$GOPATH"
fi
