# monitoring-poc

This repo contains a set of demos for deploying applications to OpenShift with application level metrics enabled.

More information on Openshift monitoring can be found [here](https://confluence.capgroup.com/pages/viewpage.action?spaceKey=CNTEN&title=Monitoring+Stack+PoC)

To setup the demo:
```
$ NAMESPACE=mynamespace
$ ./set-namespace.sh $NAMESPACE
```

To deploy the tomcat app:
```
$ oc apply -k deploy/tomcat-demo
$ oc start-build tomcat-demo --from-dir images --follow -n $NAMESPACE
```

To deploy the spring boot app:
```
$ oc apply -k deploy/spring-boot-demo
$ oc start-build spring-boot-demo --follow -n $NAMESPACE
```
NOTE: by default the applications will deploy in the same namespace. To deploy them in separate namespaces, simply rerun the setup script with a different name between deployments

To view any sample application in a web browser, first get the respective route:
```
$ oc get route <app name> -n $NAMESPACE
```

Preppend the route with "http://", and append with the required endpoint outlined below

*Tomcat*

  sample app            - /sample

  tomcat manager gui\*    - /manager/html

  metrics               - /metrics


*Spring Boot*

  sample app            - /

  metrics               - /actuator/prometheus


\* To run the Tomcat Manager GUI, first forward pod routes to the local machine (the Tomcat Manager, by design does not authorize any incoming traffic from a machine that is not localhost):
```
$ oc get pods -n $NAMESPACE
$ oc port-forward <pod> 8080:8080
```
If prompted for authentication, use the following credentials:

username: admin
password: admin



To cleanup, run:
```
$ oc delete project $NAMESPACE
```

