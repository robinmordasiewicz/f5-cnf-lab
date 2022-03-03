===================
 Create Namespace
===================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:


.. topic:: Kubernetes uses namespaces as a mechanism to separate objects within a cluster.  Create a namespace and make it the default context.


.. title:: Title

   Kubernetes uses namespaces as a mechanism to separate objects within a cluster.  Create a namespace and make it the default context.


.. topic:: Topic

   Kubernetes uses namespaces as a mechanism to separate objects within a cluster.  Create a namespace and make it the default context.


.. admonition::

   Kubernetes uses namespaces as a mechanism to separate objects within a cluster.  Create a namespace and make it the default context.


.. container:: topic

   Kubernetes uses namespaces as a mechanism to separate objects within a cluster.  Create a namespace and make it the default context.


#. Using kubectl, create the namespace.

   .. code-block:: console

      $ kubectl create ns my-cnf

#. Confirm that the namespace has been created.

   .. code-block:: console

      $ kubectl get namespaces

#. Subsequent kubectl commands will use this namespace. This is achieved using the –-namespace (or -n) switch in kubectl. For example

   .. code-block:: console

      $ kubectl get pods --namespace my-cnf

#. Permanently set the namespace for all subsequent kubectl commands in that context.

   .. code-block:: console

      $ kubectl config set-context --current --namespace my-cnf

      $ kubectl get pods

To monitor the Kubernetes cluster, we will use the k9s tool. Open a new SSH window to the Mgmt Jumphost and launch k9s 
k9s
