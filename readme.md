# Kubernetes

Learning how to setup a fully kubernetes local cluster with minikube.

Project specification [here](T-CLO-902_project.pdf)

## Start Minikube with max usage

```
minikube start --vm-driver=docker --cpus 8 --memory=8192 --disk-size=50g

```

## Minikube requirements

```
minikube addons enable ingress
```

### Create secret for dockerconfig command line

```
kubectl create secret docker-registry ghcr-credentials --docker-server=https://ghcr.io --docker-username=GITUBUSERNAME --docker-password=TOKEN --docker-email=MAIL
```

## Set up Helm repository for ELS ONLY HELM

```
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add elastic https://helm.elastic.co
helm install elastic-operator elastic/eck-operator -n elastic-system --create-namespace
helm repo add romanow https://romanow.github.io/helm-charts/

```

## Set up Helm repo for els operator
```
helm repo add elastic https://helm.elastic.co
```
