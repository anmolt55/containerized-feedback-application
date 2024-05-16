# authored by Anmol Tripathi, atripat8@gmu.edu
FROM tomcat:9.0-jdk15

COPY StudentSurvery/src/main/webapp/studentform.war /usr/local/tomcat/webapps/
