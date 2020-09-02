FROM cgregistry.capgroup.com/jboss-webserver-5/webserver53-openjdk11-tomcat9-openshift-rhel7
USER root
RUN mkdir /data
ADD jmx_prometheus_javaagent-0.13.0.jar /data/jmx_prometheus_javaagent-0.13.0.jar
ADD prometheus-jmx-config.yaml /data/prometheus-jmx-config.yaml
ENV CATALINA_OPTS="${CATALINA_OPTS} -javaagent:/data/jmx_prometheus_javaagent-0.13.0.jar=8088:/data/prometheus-jmx-config.yaml"
