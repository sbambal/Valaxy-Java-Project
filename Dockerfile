FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY ./webapp/target/*war /usr/local/tomcat/webapps
EXPOSE 8090

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]


