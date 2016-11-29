# Gradle Home
if (( $+commands[brew]))
then
    export GRADLE_HOME=`brew --prefix`/opt/gradle/libexec
else
    export GRADLE_HOME=/usr/local/gradle/
fi

# Expose to GUI (on mac)
if [[ $OSTYPE == darwin* ]];
then
    launchctl setenv GRADLE_HOME "$GRADLE_HOME"
fi
