1) Kubectl commands

apply manifests

kubectl apply -f nginx-deployment.yaml
kubectl apply -f nginx-service.yaml



2) labels

kubectl get svc
kubectl describe svc {svc-name}
kubectl get ep

kubectl get svc --show-labels

-> below commands list the services which are associated with app=nginx labels.
kubectl get svc -l app=nginx 

kubectl get pod --show-labels
kubectl get pod -l app=nginx

-> below command is used to show the multiple replica pod logs at a time

kubectl logs -l app=nginx   

-> Below command get the pods from kubernetes namespace 

kubectl get pod -n kube-system --show-labels
kubectl logs -n kube-system -l="name=weave-net" -c weave

-> below command shows and list the labels for nodes

kubectl get node —show-labels



3) scaling deployments

kubectl scale --help
kubectl scale deployment {depl-name} --replicas 4
kubectl scale deployment {depl-name} --replicas 3

kubectl scale deployment {depl-name} --replicas 5 --record
kubectl rollout history deployment {depl-name}



4) create pods by using below commands from cli

kubectl run test-nginx-service --image=busybox
kubectl exec -it {pod-name} -- bash

5) edit the svc or deplyment manifests files

kubectl edit svc <service file name> or kubectl edit deployment <deployment file name>

6) print in the yaml format

kubectl get svc <service file name> -o yaml