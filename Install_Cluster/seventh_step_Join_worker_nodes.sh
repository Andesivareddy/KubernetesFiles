sudo swapoff -a

1) Join the first worker node, execute below commands on master node to get the join token

kubeadm token create --help
kubeadm token create --print-join-command

2) below one is the example command,the below ip address is for API Server

sudo kubeadm join 172.31.43.99:6443 --token 9bds1l.3g9ypte9gf69b5ft --discovery-token-ca-cert-hash sha256:xxxx

3) Once the node is added in the cluster, below Message will be given

this node has join the cluster

4) check on master node by using below command

kubectl get node -o wide or kubectl get pod -A -o wide 

5) execute below command on worker node-1

service kubelet status

6) execute below command to check the status of cilium application

kubectl get pods -A | grep cilium

kubectl -n kube-system exec cilium-nf8lc -- cilium-dbg status - it shows the cluster both parts are unreachable

because of cilium ports are not opened

7) for that we need to open a few ports in our Network Security Group only for incomming (ingress ports)

2379-2380 port worker
8472 UDP  port master
8472 UDP  port worker
4240 TCP  port master
4240 TCP  port worker
ICMP 8/0  port master
ICMP 8/0  port worker

8) open custom TCP port 30000 - 32767 for both worker and master node, it's allows the traffic from any part in the cluster to be able to access

9) we have to open above all ports in worker nodes and again check below command

kubectl -n kube-system exec cilium-nf8lc -- cilium-dbg status

10) check connectivity status test by using below command

cilium connectivity test

11) create a test pod by using below command

kubectl run test --image=nginx and kubectl get pod -o wide 

kubectl run test1 --image-nginx and kubectl get pod -o wide







