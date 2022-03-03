Helm
=================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

We will use the Helm package manager to install CNFs within Kubernetes. The CNF is deployed in a package (referred to as a Helm Chart) which defines the components within the CNF. See https://helm.sh/docs/intro/using_helm/ for more details. 
Note: Like kubectl, helm should also use the --namespace (or -n for short) switch for all operations, unless the appropriate namespace is defined in the kubectl config (as done previously)  
Install the User Plane CNF 
helm install --values f5-cnf/cnf_1tmm.yaml f5-ctrl f5-cnf/f5ingress-0.90.7.tgz 
This command creates a new kubernetes pod, named “f5-ctrl” using the Helm chart defined in the tarball (.tgz) file. The deployment can be customised using values from an appropriate YAML configuration file. View the values with cat 
When this command is executed, observe the deployment within the SSH session running k9s. You should observe a CNF being deployed with several Pods. Note the time for all pods to reach the “running” state. This should only take a few seconds. Compare this to deploying a Virtual Machine, which typically takes several minutes to deploy. 
