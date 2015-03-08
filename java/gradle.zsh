# Gradle Home
export GRADLE_HOME=/usr/local/opt/gradle/libexec

# Gradle options
export GRADLE_OPTS="-Xss4m -Xmx2048m -Xms2048m"

# Expose to GUI
launchctl setenv GRADLE_HOME "$GRADLE_HOME"
launchctl setenv GRADLE_OPTS "$GRADLE_OPTS"