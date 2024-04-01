Kubernetes Cluster Initialization

1) sudo kubeadm Init  


we can view the list of the certificates

2) ls /etc/kubernetes/pki 


we can see the config files

3) ls /etc/kubernetes 

4) after kubeadm init run the comand "service kubelet status"  active state is running

5) static pods location "/etc/kubernetes/manifests"

access for any of the files from manifests folder use below command

6) sudo cat /etc/kubernetes/manifests/kube api-server,yaml | less 

7) sudo ls /var/lib/kubelet/

8) sudo ls /var/lib/kubelet/pki

9) sudo cat /var/lib/kubelet/config.yaml


