#! /usr/bin/zsh

# kubectl delete secret mysql-secret back-secret rabbitmq-secret
# kubectl delete deployment app-mysql app-back app-front
# helm delete rabbitmq

# # DB
# kubectl apply -f db/config.yml
# kubectl apply -f db/persistent-volume.yml
# kubectl apply -f db/db.yml

# # RABBITMQ
# kubectl apply -f rabbitmq/config.yml
# helm install rabbitmq bitnami/rabbitmq --values rabbitmq/values.yml

# # BACK
# kubectl apply -f back/config.yml
# kubectl apply -f back/back.yml

# # FRONT
# kubectl apply -f front.yml

# kubectl apply -f ingress.yml

minikube kubectl -- delete secret mysql-secret back-secret rabbitmq-secret
minikube kubectl -- delete deployment app-mysql app-back app-front
helm delete rabbitmq

# DB
minikube kubectl -- apply -f db/config.yml
minikube kubectl -- apply -f db/persistent-volume.yml
minikube kubectl -- apply -f db/db.yml

# RABBITMQ
minikube kubectl -- apply -f rabbitmq/config.yml
helm install rabbitmq bitnami/rabbitmq --values rabbitmq/values.yml

# ELS
minikube kubectl -- apply -f els/config.yml
helm install els elastic/elasticsearch -f ./els/values.yml

# BACK
minikube kubectl -- apply -f back/config.yml
minikube kubectl -- apply -f back/back.yml

# FRONT
minikube kubectl -- apply -f front.yml

minikube kubectl -- apply -f ingress.yml