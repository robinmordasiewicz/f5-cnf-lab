Create Namespace resources
=============================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

Follow the steps to deploy F5 CNFs

We first need to create resources to be used by object deployed in the namespace. 
Create networking resources. We will create two interfaces, corresponding to the subscriber side (ens6) and internet side (ens7). 
kubectl apply -f cni-grpc/cni-macvlan-bridge-ens6-dualstack.yaml 
kubectl apply -f cni-grpc/cni-macvlan-bridge-ens7-dualstack.yaml 
The configuration of these interfaces is performed using YAML files. You can inspect the contents of the YAML file to understand the parameters that are configured, e.g. 
cat cni-grpc/cni-macvlan-bridge-ens6-dualstack.yaml 
Create the secrets that will be used by the CNF. Again, YAML configuration can be inspected using cat. 
kubectl -n my-cnf apply -f cni-grpc/certs-secret.yaml 
kubectl -n my-cnf apply -f cni-grpc/keys-secret.yaml 
kubectl -n my-cnf apply -f cni-grpc/dssm-certs-secret.yaml 
kubectl -n my-cnf apply -f cni-grpc/dssm-keys-secret.yaml 
 
Install the CRDs that will be used 
helm install commoncrd --version 0.6.4 crd/f5-spk-crds-common-0.6.4.tgz 
 
kubectl apply -f cni-grpc/cnf-vlan-crd.yaml 
 
helm install gilancrd --version 0.6.4 crd/f5-spk-crds-n6-gilan-0.6.4.tgz 
helm install service-proxy --version 0.6.4 crd/f5-spk-crds-service-proxy-0.6.4.tgz 
 
Note: kubectl apply manages applications through files defining Kubernetes resources. It creates and updates resources in a cluster. This is the recommended way of managing Kubernetes applications on production. 
