=====================
 F5 CNF
=====================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

   lab-access/index.rst
   deployment/index.rst
   policies/index.rst
   cicd/index.rst

.. sidebar:: Title
   :subtitle: Subtitle

   Subsequent indented lines comprise
   the body of the sidebar, and are
   interpreted as body elements.

.. container:: hero-header-image

   F5 Cloud Native Functions

.. container:: youtube-hero

   ..  youtube:: 7riGQIJRJgI
       :width: 800
       :height: 600

.. container:: hero-header-block

   Unleash the power of Kubernetes

.. mermaid::
   :caption: Figure 5: Pods in Zones

   graph TB
      subgraph "zoneA"
          n1(Node1)
          n2(Node2)
      end
      subgraph "zoneB"
          n3(Node3)
          n4(Node4)
      end
      subgraph "zoneC"
          n5(Node5)
          n6(Node6)
      end
      classDef plain fill:#ddd,stroke:#fff,stroke-width:4px,color:#000;
      classDef k8s fill:#0E5C8D,stroke:#fff,stroke-width:4px,color:#fff;
      classDef cluster fill:#fff,stroke:#bbb,stroke-width:2px,color:#0E5C8D;
      class n1,n2,n3,n4,n5,n6 k8s;
      class zoneA,zoneB,zoneC cluster;


.. mermaid::
   :caption: Figure 6: Ingress Controller

   graph LR
      UE([UE])-. 5G Radio Access .->ingress[Ingress];
      ingress-->|routing rule|service[Service];
      subgraph cluster
      ingress;
      service-->pod1[Pod];
      service-->pod2[Pod];
      end
      classDef plain fill:#ddd,stroke:#fff,stroke-width:4px,color:#000;
      classDef k8s fill:#0E5C8D,stroke:#fff,stroke-width:4px,color:#fff;
      classDef cluster fill:#fff,stroke:#bbb,stroke-width:2px,color:#0E5C8D;
      class ingress,service,pod1,pod2 k8s;
      class UE plain;
      class cluster cluster;


.. container:: youtube-sidebar

   ..  youtube:: 7riGQIJRJgI
       :width: 295
       :height: 135

.. topic:: Your Topic Title

    Subsequent indented lines comprise
    the body of the topic, and are
    interpreted as body elements.

.. container:: topic

   F5 Cloud Native network functions.

#. Blue Items

   The first paragraph in an ordered list would be nice to have a gray background.

   .. code-block:: console

      $ kill -9 86

   .. container:: orderedlistitem

      An orderedlistitem helps explain whats going on.

#. Red Items

   The first paragraph in an ordered list would be nice to have a gray background.

   .. code-block:: console

      $ kill -9 86

   .. container:: orderedlistitem

      An orderedlistitem helps explain whats going on.

