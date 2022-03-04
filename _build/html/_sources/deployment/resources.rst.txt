Resources
=============================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

.. container:: topic

   Dependancy resources are required to be created for the F5 CNF.

#. Create two interfaces, corresponding to the subscriber side (ens6) and internet side (ens7).

   .. code-block:: console

      $ kubectl apply -f cni-grpc/cni-macvlan-bridge-ens6-dualstack.yaml
      $ kubectl apply -f cni-grpc/cni-macvlan-bridge-ens7-dualstack.yaml

#. Create the secrets for the CNF.

   .. code-block:: console

      $ kubectl -n my-cnf apply -f cni-grpc/certs-secret.yaml 
      $ kubectl -n my-cnf apply -f cni-grpc/keys-secret.yaml 
      $ kubectl -n my-cnf apply -f cni-grpc/dssm-certs-secret.yaml 
      $ kubectl -n my-cnf apply -f cni-grpc/dssm-keys-secret.yaml 
 
#. Install the custom resources.

   .. code-block:: console

      $ helm install commoncrd --version 0.6.4 crd/f5-spk-crds-common-0.6.4.tgz 
      $ kubectl apply -f cni-grpc/cnf-vlan-crd.yaml 
      $ helm install gilancrd --version 0.6.4 crd/f5-spk-crds-n6-gilan-0.6.4.tgz 
      $ helm install service-proxy --version 0.6.4 crd/f5-spk-crds-service-proxy-0.6.4.tgz 
 
