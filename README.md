# CompleteApplication
Simple flask and react application along with docker files and helm chart sample

# Intstallation

```
# Start minikube
minikube start --vm=true

# Set docker env
eval $(minikube docker-env)             # unix shells
# minikube docker-env | Invoke-Expression # PowerShell

# enable minikube ingress
minikube addons enable ingress

docker build -t mayurvpatil/backend:1.0.0 . 
docker build -t mayurvpatil/frontend:1.0.0 .

helm install stakater chart/ --namespace ingress-nginx

```
