From tomcat:8-jre8
EXPOSE 8082
ADD target/*.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh", "run"]