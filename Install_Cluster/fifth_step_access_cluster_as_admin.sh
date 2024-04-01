This steps will help us not use SUDO any more because we can become admin

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
ls -l ~/.kube/config
echo $(id -u) it gives 1000
echo $(id -g) it gives 1000
sudo chown $(id -u):$(id -g) ~./kube/config

