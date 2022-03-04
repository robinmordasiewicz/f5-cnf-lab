=====================
 F5 CNF
=====================

-----------
 Subtitle
-----------

CNF Lab Guide
===================

.. sidebar:: reST content elements

   * one
   * two
   * three

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

   lab-access/index.rst
   deployment/index.rst
   cnf-policies/index.rst
   cicd-with-argo/index.rst


BIG-IP CGN deployed as a Cloud-Native Network Function (CNF)
--------------------------------------------------------------

.. mermaid::

   graph LR;
    client([client])-. Ingress-managed <br> load balancer .->ingress[Ingress];
    ingress-->|routing rule|service[Service];
    subgraph cluster
    ingress;
    service-->pod1[Pod];
    service-->pod2[Pod];
    end
    classDef plain fill:#ddd,stroke:#fff,stroke-width:4px,color:#000;
    classDef k8s fill:#326ce5,stroke:#fff,stroke-width:4px,color:#fff;
    classDef cluster fill:#fff,stroke:#bbb,stroke-width:2px,color:#326ce5;
    class ingress,service,pod1,pod2 k8s;
    class client plain;
    class cluster cluster;


.. container:: topic

   Namespaces provide a mechanism for isolating groups of resources within a single cluster.  Create a namespace and make it the default context for all kubectl commands.


Mermaid Template
#################

.. mermaid::

   graph LR
   A[Hard edge] -->B(Round edge)
       B --> C{Decision}
       C -->|One| D[Result one]
       C -->|Two| E[Result two]


