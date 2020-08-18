$ cat Dockerfile

FROM tomcat:8.0-alpine

LABEL maintainer="ankitrajbharti32@gmail.com"

ADD /target/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]