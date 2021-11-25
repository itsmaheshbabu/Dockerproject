FROM tomcat:9-jdk8
LABEL author="mahesh"
COPY target/java-web-app*.war /usr/share/tomcat/webapps/java-web-app.war
EXPOSE 8080