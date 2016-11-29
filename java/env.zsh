# Java, Groovy home
if [[ $OSTYPE == darwin* ]];
then
    export JAVA_HOME=/Library/Java/Home
    launchctl setenv JAVA_HOME "$JAVA_HOME"

    if (( $+commands[brew]))
    then
        export GROOVY_HOME=`brew --prefix`/opt/groovy/libexec
    fi
    launchctl setenv GROOVY_HOME "$GROOVY_HOME"
fi