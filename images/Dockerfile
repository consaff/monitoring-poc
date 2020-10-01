FROM cgregistry.capgroup.com/jboss-webserver-5/webserver53-openjdk11-tomcat9-openshift-rhel7
USER root
ADD tomcat-config/* /opt/jws-5.3/tomcat/conf/
ADD exporter-tomcat/*.jar /opt/jws-5.3/tomcat/lib/
ADD exporter-tomcat/metrics.war /opt/jws-5.3/tomcat/webapps/
ADD sample-app/sample.war /opt/jws-5.3/tomcat/webapps/sample.war
