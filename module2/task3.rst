Helm
=================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:


.. container:: topic

   F5 CNFs support the helm package manager. Create a deplpoyment using a helm chart along with a values file which contains implementation specific details. 

#. Install the User Plane CNF

   .. code-block:: console

      $ helm install --values f5-cnf/cnf_1tmm.yaml f5-ctrl f5-cnf/f5ingress-0.90.7.tgz


.. container:: topic

   | This command creates a new kubernetes pod, named “f5-ctrl” using the Helm chart defined in the tarball (.tgz) file. The deployment can be customised using values from an appropriate YAML configuration file.
   | Observe the deployment within the SSH session running k9s. A CNF is deployed with several Pods. Note the time for all pods to reach the “running” state.
