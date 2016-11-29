# GOPATH must be set here as its needed for path
export GOPATH=$HOME/go

# Add custom-built Go binaries to the front of the path
export PATH=$GOPATH/bin:$PATH

# Add Go to PATH
if (( $+commands[brew]))
then
    export PATH=$PATH:`brew --prefix`/opt/go/libexec/bin
else
    export PATH=$PATH:/usr/local/go/bin
fi