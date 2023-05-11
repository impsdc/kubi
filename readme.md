# Kubernetes

Learning how to setup a fully kubernetes local cluster with minikube.

Project specification [here](T-CLO-902_project.pdf)

## Minikube requirements
```
minikube addons enable ingress
```

### Create secret for dockerconfig command line 

```
k create secret generic regcred \                                
    --from-file=.dockerconfigjson=.dockerconfig.json \
    --type=kubernetes.io/dockerconfigjson
```