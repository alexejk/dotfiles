export AWS_CREDENTIAL_FILE=$HOME/.aws-credentials-master

if [ -f ~/.aws-credentials ]
then
    source ~/.aws-credentials
fi

if [ -d ~/.ec2 ]
then
    export EC2_PRIVATE_KEY="$(if [ -f $HOME/.ec2/pk-*.pem ]; then echo $(/bin/ls $HOME/.ec2/pk-*.pem | /usr/bin/head -1); else echo ''; fi)"
    export EC2_CERT="$(if [ -f $HOME/.ec2/cert-*.pem ]; then echo $(/bin/ls $HOME/.ec2/cert-*.pem | /usr/bin/head -1); else echo ''; fi)"
fi