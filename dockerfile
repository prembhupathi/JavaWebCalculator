FROM tomcat:9-jdk17
COPY target/*.war /usr/local/tomcat/webapps/
RUN chmod -R 755 /usr/local/tomcat/webapps/*.war
RUN chown -R ubuntu:ubuntu /usr/local/tomcat
EXPOSE 8080
CMD ["catalina.sh",run"]
