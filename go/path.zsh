# GOPATH must be set here as its needed for path
export GOPATH=$HOME/go

# Add Go to PATH
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# Add custom-built Go binaries to the front of the path
export PATH=$GOPATH/bin:$PATH