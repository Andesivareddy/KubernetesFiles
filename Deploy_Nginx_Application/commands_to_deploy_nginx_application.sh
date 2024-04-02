1) Kubectl commands

apply manifests

kubectl apply -f nginx-deployment.yaml
kubectl apply -f nginx-service.yaml



2) labels

kubectl get svc
kubectl describe svc {svc-name}
kubectl get ep

kubectl get svc --show-labels
kubectl get svc -l app=nginx 

kubectl get pod --show-labels
kubectl get pod -l app=nginx
kubectl logs -l app=nginx

kubectl get pod -n kube-system --show-labels
kubectl logs -n kube-system -l="name=weave-net" -c weave

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