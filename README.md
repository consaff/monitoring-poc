# monitoring-poc

This repo contains a demo for deploying a tomcat application with jvm metrics.  After deploying the app, metrics can be viewed as an administrator, or a developer.

More information on Openshift monitoring can be found [here](https://confluence.capgroup.com/pages/viewpage.action?spaceKey=CNTEN&title=Monitoring+Stack+PoC)

To run the demo:

$ oc apply -k tomcat-demo

$ oc start-build tomcat-demo --from-dir tomcat-demo --follow

Note that the demo is hardcoded for the namespace "consaff-tomcat-demo"
