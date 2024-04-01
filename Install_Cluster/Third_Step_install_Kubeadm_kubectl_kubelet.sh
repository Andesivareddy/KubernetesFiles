Installation Steps on MasterNode

# Install packages needed to use the Kubernetes apt repository
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl

# Download the Google Cloud public signing key
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg

# Add the Kubernetes apt repository
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

# Install kubelet, kubeadm & kubectl, and pin their versions
sudo apt-get update
# check available kubeadm versions (when manually executing)
apt-cache madison kubeadm
# Install version 1.21.0 for all components
sudo apt-get install -y kubelet=1.21.0-00 kubeadm=1.21.0-00 kubectl=1.21.0-00
or
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl

service kubelet status

kubeadm version

kubectl version
## apt-mark hold prevents package from being automatically upgraded or removed

Link -  https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/

# Workers Nodes

1) Open Worker node

2) vim <file-name.sh>

3) Copy and paste above all commands which we used for Master node

4) chmod u+x <file name.sh>

5) ./<file-name.sh>

6) service kubelet status

7) kubeadm version

8) kubectl version
