# Tomcat 9 on Java 8 with the official Tomcat sample WAR deployed
FROM tomcat:9.0-jdk8
 
# Download the sample WAR straight into Tomcat's webapps folder.
# Tomcat unpacks it automatically on start and serves it at /sample
ADD https://tomcat.apache.org/tomcat-9.0-doc/appdev/sample/sample.war /usr/local/tomcat/webapps/sample.war
 
EXPOSE 8080
 
CMD ["catalina.sh", "run"]
 
