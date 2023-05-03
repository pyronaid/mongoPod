#!/bin/bash
echo "###############################################"
echo "###############################################"
echo "###############################################"
echo "###############################################"
echo "########### Refresh Mongo Deployment ##########"
echo "###############################################"
echo "###############################################"
echo "###############################################"
echo "###############################################"


### set docker env
eval $(minikube docker-env)

#refresh installation
echo "command delete -f mongo.yaml"
kubectl delete -f mongo.yaml
echo "###############################################"
echo "###############################################"
echo "command delete -f mongo-config.yaml"
kubectl delete -f mongo-config.yaml
echo "###############################################"
echo "###############################################"
echo "command delete -f mongo-secret.yaml"
kubectl delete -f mongo-secret.yaml
echo "###############################################"
echo "###############################################"
echo "command apply -f mongo.yaml"
kubectl apply -f mongo.yaml
echo "###############################################"
echo "###############################################"
echo "command apply -f mongo-config.yaml"
kubectl apply -f mongo-config.yaml
echo "###############################################"
echo "###############################################"
echo "command apply -f mongo-secret.yaml"
kubectl apply -f mongo-secret.yaml
echo "###############################################"
echo "###############################################"

