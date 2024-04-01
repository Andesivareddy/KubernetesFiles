#!/bin/bash

# Install and configure prerequisites
## load the necessary modules for Containerd

Install Container Runtime

https://kubernetes.io/docs/setup/production-environment/container-runtimes/  - Install Container Runtime

# Pre-requisites

cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
overlay
br_netfilter
EOF

sudo modprobe overlay
sudo modprobe br_netfilter

# sysctl params required by setup, params persist across reboots
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-iptables  = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.ip_forward                 = 1
EOF

# Apply sysctl params without reboot
sudo sysctl --system

# Install containerd
sudo apt-get update
sudo apt-get -y install containerd

# Configure containerd with defaults and restart with this config
sudo mkdir -p /etc/containerd
containerd config default | sudo tee /etc/containerd/config.toml
sudo sed -i 's/SystemdCgroup \= false/SystemdCgroup \= true/g' /etc/containerd/config.toml
sudo systemctl status containerd
sudo systemctl status containerd.service
sudo systemctl restart containerd

# Install Containerd on Worker Nodes

1) vim install.sh

copy and paste all the above in this file

2) mv install.sh install-containerd.sh

3) ls -l install-containerd.sh (Check Permissions)

if not provided the execute permissions please Provide permissions to execute the install-containerd.sh file

4) chmod +x install-containerd.sh

5) ./install-containerd.sh

6) sudo systemctl restart containerd

7) sudo systemctl status container.service or container

8) sudo systemctl status containerd

Follow the same steps for other worker nodes as well



