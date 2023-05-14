# Kubernetes

Learning how to setup a fully kubernetes local cluster with minikube.

Project specification [here](T-CLO-902_project.pdf)

## Minikube requirements

```
minikube addons enable ingress
```

### Create secret for dockerconfig command line

```
kubectl create secret docker-registry ghcr-credentials --docker-server=https://ghcr.io --docker-username=GITUBUSERNAME --docker-password=TOKEN --docker-email=MAIL
```

## Set up Helm repository

```
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add elastic https://helm.elastic.co
```
