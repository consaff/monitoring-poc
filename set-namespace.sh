#! /bin/sh
file1=deploy/tomcat-demo/namespace.yaml
file2=deploy/tomcat-demo/kustomization.yaml
file3=deploy/spring-boot-demo/namespace.yaml
file4=deploy/spring-boot-demo/kustomization.yaml
name=$1

sed -i 's/name: .*/name: '$name'/' $file1
sed -i 's/namespace: .*/namespace: '$name'/' $file2
sed -i 's/name: .*/name: '$name'/' $file3
sed -i 's/namespace: .*/namespace: '$name'/' $file4

