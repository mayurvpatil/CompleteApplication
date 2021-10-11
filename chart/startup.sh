#!/bin/bash

# Start minikube
minikube start --vm=true

# Set docker env
eval $(minikube docker-env)             # unix shells
# minikube docker-env | Invoke-Expression # PowerShell

# enable minikube ingress
minikube addons enable ingress

cd backend
docker build -t backend:1.0.0 . 

cd ..
cd frontend
docker build -t frontend:1.0.0 .

cd ..
helm install stakater chart/ --namespace ingress-nginx