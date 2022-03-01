Create Namespace
==========================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:


Kubernetes uses namespaces as a mechanism to separate objects within a cluster.

We will create the namespace my-cnf to for all configuration used in the demo.


#. Use kubectl to create the namespace.

.. code-block:: console

   kubectl create ns my-cnf

#. To confirm the namespace(s) deployed in Kubernetes, we can use

.. code-block:: console

   kubectl get namespaces

#. Subsequent kubectl commands will use this namespace. This is achieved using the –-namespace (or -n) switch in kubectl. For example

.. code-block:: console

   kubectl get pods --namespace my-cnf

#. To avoid specifying namespace in all subsequent commands, set the working namespace in the kubectl config.

.. code-block:: console

   kubectl config set-context --current --namespace my-cnf

   kubectl get pods


Now kubectl will now return details of the my-cnf namespace without needing to explicitly specify the namespace in the kubectl command.

TIP: it is important to ensure you are always working in the correct namespace.

To monitor the Kubernetes cluster, we will use the k9s tool. Open a new SSH window to the Mgmt Jumphost and launch k9s 
k9s
