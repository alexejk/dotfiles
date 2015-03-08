# AppServers: Glassfish and Tomcat home
export CATALINA_HOME=/usr/local/opt/tomcat/libexec
export TOMCAT_HOME=$CATALINA_HOME
export GLASSFISH_HOME=/usr/local/opt/glassfish/libexec

# Expose to GUI (on mac)
if [[ $OSTYPE == darwin* ]];
then
    launchctl setenv TOMCAT_HOME "$TOMCAT_HOME"
    launchctl setenv CATALINA_HOME "$CATALINA_HOME"
    launchctl setenv GLASSFISH_HOME "$GLASSFISH_HOME"
fi