# monitoring-poc

This repo contains a demo for deploying a tomcat application with jvm metrics.  After deploying the app, metrics can be viewed as an administrator, or a developer.

More information on Openshift monitoring can be found [here](https://confluence.capgroup.com/pages/viewpage.action?spaceKey=CNTEN&title=Monitoring+Stack+PoC)

To run the demo:
```
$ oc apply -k tomcat-demo
$ oc start-build tomcat-demo --from-dir tomcat-demo --follow -n NAMESPACE
```

Replace "NAMESPACE" with the namespace the app will be deployed on.  By default, this is set to "consaff-tomcat-demo"

To change, replace the following values:
- "name" field in /tomcat-demo/namespace-tomcat-demo.yaml
- "namespace" field in /tomcat-demo/kustomization.yaml
- "image" field in /tomcat-demo/dc-tomcat-demo.yaml (only replace "consaff-tomcat-demo" with the desired namespace)

To cleanup, run:
```
$ oc delete project NAMESPACE
```
