===================
Namespace
===================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

.. container:: topic

   Namespaces provide a mechanism for isolating groups of resources within a single cluster.  Create a namespace and make it the default context for all kubectl commands.

#. Using kubectl, create the namespace.

   .. code-block:: console

      $ kubectl create ns my-cnf

#. Confirm that the namespace has been created.

   .. code-block:: console

      $ kubectl get namespaces

#. View the pods in the new namespace, by adding the *--namespace* argument.

   .. code-block:: console

      $ kubectl get pods --namespace my-cnf

#. Permanently set the namespace for all subsequent kubectl commands in the *my-cnf* context.

   .. code-block:: console

      $ kubectl config set-context --current --namespace my-cnf

      $ kubectl get pods

To monitor the Kubernetes cluster, we will use the k9s tool. Open a new SSH window to the Mgmt Jumphost and launch k9s 
k9s
