=====================
 F5 CNF Solution
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

   module1/index.rst
   module2/index.rst
   module3/index.rst
   module4/index.rst


BIG-IP CGN deployed as a Cloud-Native Network Function (CNF)
--------------------------------------------------------------

.. mermaid::

   graph  LR
     UE([UE])-. E-node B .->service-proxy[Service-Proxy];
     service-proxy-->|K8S|nginx[NGINX];
     subgraph cluster
     service-proxy;
     service-->pod1[Pod];
     service-->pod2[Pod];
     end
     classDef plain fill:#ddd,stroke:#fff,stroke-width:4px,color:#000;
     classDef k8s fill:#326ce5,stroke:#fff,stroke-width:4px,color:#fff;
     classDef cluster fill:#fff,stroke:#bbb,stroke-width:2px,color:#326ce5;
     class service-proxy,service,pod1,pod2 k8s;
     class UE plain;
     class cluster cluster;



