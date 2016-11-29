# Android SDK
if (( $+commands[android]))
then
    
    if (( $+commands[brew]))
    then
        export ANDROID_SDK_ROOT=`brew --prefix`/opt/android-sdk/
    else
        export ANDROID_SDK_ROOT=/opt/android-sdk/
    fi
    export ANDROID_HOME=$ANDROID_SDK_ROOT
fi
