Control Plane CNF
====================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

.. container:: topic

   F5’s Cloud-Native Engine uses the Distributed Session State Manager (DSSM) to store state for BIG-IP CNFs. The DSSM can be deployed using a Helm Chart.

#. Deploy DSSM HELM Chart

   .. code-block:: console

      $ helm install f5-dssm f5-dssm/f5-dssm-0.11.0.tgz --values f5-dssm/values-f5-dssm.yaml

#. DSSM is deployed as a distributed database across 3 pods. Start shell for f5-dssm-db-0 (using K9s, in the same way as done in the previous)

#. DSSM uses a Redis database. You can use redis-cli to work with this database directly. For example, enter redis-cli info to get some basic information.

