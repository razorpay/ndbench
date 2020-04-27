FROM tomcat:latest

COPY . .
RUN ls -ltra
COPY ndbench-web/build/libs/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]


