# Java, Groovy home
export JAVA_HOME=/Library/Java/Home
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# Java TOOLS_OPTS setting (workaround for Gradle wrapper bug)
export JAVA_TOOLS_OPTS="-Djava.awt.headless=true"

# Expose to GUI
launchctl setenv JAVA_HOME "$JAVA_HOME"
launchctl setenv GROOVY_HOME "$GROOVY_HOME"
launchctl setenv JAVA_TOOLS_OPTS "$JAVA_TOOLS_OPTS"