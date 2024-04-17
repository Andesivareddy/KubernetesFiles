service types

NodePort Service: https://kubernetes.io/docs/concepts/services-networking/service/#nodeport

Load Balancer Service: https://kubernetes.io/docs/concepts/services-networking/service/#loadbalancer



ingress

Ingress: https://kubernetes.io/docs/concepts/services-networking/ingress/

List of Ingress Controller: https://kubernetes.io/docs/concepts/services-networking/ingress-controllers/

Bare Metal Ingress Controller: https://kubernetes.github.io/ingress-nginx/deploy/baremetal/



helm

Install Helm: https://helm.sh/docs/intro/install/

Steps

1) curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
2) sudo apt-get install apt-transport-https --yes
3) echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
4) sudo apt-get update
5) sudo apt-get install helm



install nginx-ingress-controller with helm

Nginx Ingress Controller: https://kubernetes.github.io/ingress-nginx/