Deploy CNF using ArgoCD
============================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

Add the DSSM application in ArgoCD 
DSSM Application 
General 
Application Name: f5-dssm 
Project: f5-dssm 
Sync Policy: <automatic> 
[Prune Resouces] – Selected 
[Self Heal] - Selected 
Source 
Repository URL: https://gitlab.f5.local/root/my-cnf.git 
Path: f5-dssm 
Destination 
Cluster URL: https://10.1.1.4:6443 
Namespace: my-cnf 
Helm 
Values Files: values-f5-dssm.yaml 
 
Verify using kubectl or k9s that the DSSM function is deployed automatically. 
Delete the DSSM application in ArgoCD and verify it terminates. 
 
STOP! MODULE 6 COMPLETE. Challenge Answer is blue-kangaroo 
