FROM tomcat:9.0.55-jre8
LABEL author="mahesh"
COPY target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war
EXPOSE 8080