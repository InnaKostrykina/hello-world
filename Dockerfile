# Use as a parent image
FROM tomcat:9.0.0-jre8

COPY /target/test-hello-world.war /usr/local/tomcat/webapps/test-hello-world.war