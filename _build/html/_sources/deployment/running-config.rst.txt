Running Config
=================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:


.. container:: topic

   The kubernetes running config may be viewed and modified.

#. View all pods and services.

   .. code-block:: console

      $ kubectl get pod,svc -o wide 
 
   .. container:: subtopic

      A Kubernetes service is an abstraction of a group of Pods which run the same function. Within a service, a “Selector” is defined as shown in the output above. The service subsequently uses as search criteria to match any Pod which has that label.

#. View the labels assigned to a pod.

   .. code-block:: console

      $ kubectl describe <pod name> 
 

Use k9s to inspect the configuration. Use ‘d’ to see TMM IPs 
Selected K9s commands (see https://k9scli.io/topics/commands/ for full details) 
Arrow keys	- up down 
Enter		- Select 
ESC		- back 
d		- view configuration (for pod) 
s		- start shell (for container) 
CNTL-D		- exit shell 
CNTL-C		- quit K9s 
Inspect CNF routing Configuration 
Routing functions in dataplane pod: 
f5-tmm-routing is ZebOS instance (dyanmic routing control plane) 
f5-tmm-tmrouted updates TMM with routes from f5-tmm-routing 
 
Access the Mgmt Jumphost instance running k9s (or launch a new SSH window and run k9s) 
Use the arrow keys and [ENTER] to select the f5-tmm pod. 
Use the arrows keys select the f5-tmm-routing acontainer and press [s] to start shell 
View the routing configuration in Start shell for f5-tmm-routing and view routing configurationusing the following commands 
imish 
enable 
show running-config 
exit 
exit 
exit 
