Uninstall HELM Charts
======================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

SSH to JumpHost and run: 
helm uninstall f5-dssm -n my-cnf 
helm uninstall f5-ctrl -n my-cnf 
 
Verify termination of Pods (e.g. using k9s,  k9s -n my-cnf) 
 
STOP! MODULE 5 COMPLETE. Challenge Answer is brown-cow
