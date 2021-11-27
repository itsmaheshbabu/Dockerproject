FROM tomcat:8.0.20-jre8
LABEL author="mahesh"
COPY target/java-web-app*.war /usr/share/tomcat/webapps/java-web-app.war
EXPOSE 8080