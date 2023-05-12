#! /usr/bin/zsh

kubectl delete secret mysql-secret back-secret
kubectl delete deployment app-mysql app-back app-front
# kubectl delete --all PersistentVolume 

kubectl apply -f db/config.yml
kubectl apply -f db/persistent-volume.yml
kubectl apply -f db/db.yml

kubectl apply -f back/config.yml
kubectl apply -f back/back.yml

kubectl apply -f front.yml

kubectl apply -f ingress.yml
