# monitoring-poc

This repository has been built to demonstrate the monitoring capabilities of Prometheus / Grafana on OpenShift.

Comprehensive details can be found in the documentation on Confluence:

https://confluence.capgroup.com/pages/viewpage.action?spaceKey=CNTEN&title=Monitoring+Stack+PoC

Also useful is the official monitoring documentation for OpenShift 4.5, found here:

https://access.redhat.com/documentation/en-us/openshift_container_platform/4.5/html/monitoring/index

To run the demo, log into an OpenShift cluster using the OpenShift CLI, and navigate to the desired namespace.  Note that this namespace should match the namespace listed in the .yaml files.  By default, it is set to "consyss-poc"

$ oc login
$ oc project consyss-poc

Run the following command to deploy the sample application:

$ oc apply -f prometheus-example-app.yaml

The example app deploys a simple service that exposes a "version" metric.  This metric should be seen by the cluster monitoring operator automatically, and requires zero configuration for querying with Prometheus as an administrator.  To view this metric as a developer, a ServiceMonitor object must be deployed.  The ServiceMonitor points Prometheus to any metrics exposed by the specified application to be shown to any developer with the correct permissions.  Run the following to deploy the ServiceMonitor:

$ oc apply -f example-app-service-monitor.yaml

