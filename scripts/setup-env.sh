#!/bin/bash

context=$1
namespace=$2

kubectl --context=${context} create namespace ${namespace}

#ex: ./setup-env.sh minikube lightning-kube