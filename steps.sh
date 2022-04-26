#Steps to Install Helms:
--------------------------------

curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
sudo apt-get install apt-transport-https --yes
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm

#Steps to Install Prometheus:
--------------------------------

#add the latest helm repository in Kubernetes
helm repo add stable https://charts.helm.sh/stable

#add the Prometheus community helm chart in Kubernetes
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

#once added search Prometheus community helm chart to install
helm search repo prometheus-community

#now install prometheus-community/kube-prometheus-stack
helm install stable prometheus-community/kube-prometheus-stack

#the output below
helm install stable prometheus-community/kube-prometheus-stack
: '
NAME: stable
LAST DEPLOYED: Fri Apr  9 11:53:08 2021
NAMESPACE: default
STATUS: deployed
REVISION: 1
NOTES:
kube-prometheus-stack has been installed. Check its status by running:
  kubectl --namespace default get pods -l "release=stable"

Visit https://github.com/prometheus-operator/kube-prometheus for instructions on how to create & configure Alertmanager and Prometheus instances using the Operator.
'

#now check prometheus and grafana pod and service
kubectl get pods
kubectl get svc

#Edit Prometheus and Grafana Service:
--------------------------------

kubectl edit svc stable-kube-prometheus-sta-prometheus

# Change from ClusterIP to LoadBalancer/NodePort

kubectl edit svc stable-grafana

# Change from ClusterIP to LoadBalancer/NodePort

# Now get service again and see the change
kubectl get svc

#Access Prometheus and Grafana WEB Interface
--------------------------------

#Using the IP and port in svc file above or using the Service external IP
