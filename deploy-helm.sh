#!/bin/bash

context=$1
namespace=$2
imageTag=$3
database=$4
serviceType=$5
nodePort=$6

echo "context: ${context}"
echo "namespace: ${namespace}"
echo "imageTag: ${imageTag}"
echo "database: ${database}"
echo "serviceType: ${serviceType}"
echo "nodePort: ${nodePort}"


kubeContextArg=""
if [[ ${context} != "" ]]
then
    kubeContextArg="--kube-context ${context}"
fi

namespaceArg=""
if [[ ${namespace} != "" ]]
then
    namespaceArg="--namespace ${namespace}"
fi

serviceTypeArg=""
if [[ ${serviceType} != "" ]]
then
    serviceTypeArg="--set service.type=${serviceType}"
fi

nodePortArg=""
if [[ ${nodePort} != "" ]]
then
    nodePortArg="--set service.nodePort=${nodePort}"
fi


helm ${kubeContextArg} ${namespaceArg} install -n lightning-kube --set database=${database} ${serviceTypeArg} ${nodePortArg} --set image.tag=${imageTag} charts/lightning-kube


if [ $? -eq 0 ]
then
  echo "Deploy Success"
else
  echo "Deploy Error" >&2
fi


#./deploy-helm.sh minikube jx-local 0.0.1 cryptocurrency-services-local
#./deploy-helm.sh "" jx-local 0.0.1 cryptocurrency-services-local
#./deploy-helm.sh "" "" 0.0.1 cryptocurrency-services-local
