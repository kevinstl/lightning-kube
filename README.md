# Lightning Kube

Lightning Kube provides a simple way to deploy a Lightning Node into Kubernetes.           

[<img src="https://raw.githubusercontent.com/kubernetes/kubernetes/master/logo/logo.png" width="100px">](https://kubernetes.io/docs/home "Kubernetes")  [<img src="https://raw.githubusercontent.com/lightningnetwork/lnd/master/logo.png" width="100px">](https://github.com/lightningnetwork/lnd "LND")  [<img src="https://avatars2.githubusercontent.com/u/528860?s=200&v=4" width="100px">](https://github.com/bitcoin/bitcoin "bitcoind")  [<img src="https://avatars3.githubusercontent.com/u/10235229?s=200&v=4" width="100px">](https://github.com/btcsuite/btcd "BTCD")  [<img src="https://jenkins.io/images/logos/jenkins-x/jenkins-x-256.png" width="100px">](https://jenkins-x.io "Jenkins X")

This project is confirmed to work for regtest, simnet, testnet and mainnet on a minikube instance and a gke instance.

This project implements a Lightning Node running in Kubernetes using Lightning Network Daemon (LND) and BTCD deployed by Jenkins X. 

- [Kubernetes](https://kubernetes.io/docs/home) is a container management system. If a project is [Dockerized](https://www.docker.com) Kubernetes simplifies your project lifecycle.
- [Lightning Network Daemon (LND)](https://github.com/lightningnetwork/lnd) is a complete implementation of a Lightning Network node.
- [Bitcoind](https://github.com/bitcoin/bitcoin) is an implementation of a full bitcoin node from bitcoin core.
- [BTCD](https://github.com/btcsuite/btcd) is an implementation of a full bitcoin node written in Go.
- [Jenkins X](https://jenkins-x.io) is a CI/CD solution for applications on Kubernetes.

LND currently requires a connection to a full bitcoin node. Lightning Kube consists of the following Kubernetes/Jenkins X ready projects:

- [LND Kube](https://github.com/kevinstl/lnd-kube)
- [Bitcoind Kube](https://github.com/kevinstl/bitcoind-kube)
- [BTCD Kube](https://github.com/kevinstl/btcd-kube)

You have two options for your full bitcoin node, Bitcoind Kube or BTCD Kube. Currently Bitcoind is recommended as it appears to sync with the entire blockchain faster than BTCD.

If you do not currently have and instance of Kubernetes an excellent place to start is to deploy it locally with [Minikube](https://github.com/kubernetes/minikube). A new installation of Jenkins X will offer to install Minikube for you but you may want to give [Minikube Easy](https://github.com/kevinstl/minikube-easy) a look as it can simplify and enhance your Minikube installation. Once you're ready to run your Lighting Node on mainnet [Google Kubernetes Engine (GKE)](https://cloud.google.com/kubernetes-engine/) is an easy to use cloud based Kubernetes Cluster.

This project itself is actually a Kubernetes/Jenkins X ready implementation of [Markserv](https://github.com/markserv/markserv) to allow for real time github style rendering and editing of this README.md file locally. Deploying this project to your own Kubernetes instance would be a simple way to get acquainted with Kubernetes and Jenkins X. There is probably no reason to deploy this project to a production environment. It is intended strictly for learning purposes. If you are already familiar with kubernetes and Jenkins X or just want to get going now then you can move on to installing [LND Kube](https://github.com/kevinstl/lnd-kube) and [BTCD Kube](https://github.com/kevinstl/btcd-kube).

To install this project:

1. Stand up a [Kubernetes Cluster and Install Jenkins X](https://github.com/kevinstl/minikube-easy#preparing-for-installations).
2. Make the directory that will hold this project in you home directory: `mkdir -p ~/Developer/projects` Your installation of this project will look for this directory. If you need to change it the modification can be made in [deployment.yaml](https://github.com/kevinstl/lightning-kube/blob/master/charts/lightning-kube/templates/deployment.yaml) 
3. Clone this project. `git clone https://github.com/kevinstl/lightning-kube ~/Developer/projects/lightning-kube`
4. Change to project directory `cd ~/Developer/projects/lightning-kube`
5. Import this project into your Jenkins X instance. `jx import`

If the installation is successful and you installed via Minikube Easy then Jenkins X should have deployed this [README.md](http://minikube-easy:30801/lightning-kube/README.md) into your kubernetes cluster.