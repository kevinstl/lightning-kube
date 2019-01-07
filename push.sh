#!/bin/bash

branch=$1

if [[ ! -z ${KUBE_ENV} ]]
then
    git config remote.origin.url https://github.com/kevinstl/lightning-kube.git
    git config --global credential.helper store
    jx step git credentials

    ls -al

    git checkout $branch

    git pull origin

    git push -u origin $branch
fi


#if [ $? -eq 0 ]
#then
#  echo "Deploy Success"
#else
##  echo "Deploy Error" >&2
#  echo "Deploy Error: " $?
#fi
