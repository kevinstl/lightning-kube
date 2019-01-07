#!/bin/bash

context=$1

kubeContextArg=""
if [[ ${context} != "" ]]
then
    kubeContextArg="--kube-context ${context}"
fi


helm ${kubeContextArg} del --purge lightning-kube

#if [ $? -eq 0 ]
#then
#  echo "Undeploy Success"
#else
#  echo "Undeploy Error" >&2
#fi

#./undeploy-helm.sh minikube
#./undeploy-helm.sh ""
