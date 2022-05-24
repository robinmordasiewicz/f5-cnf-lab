==========
 F5 CNF
==========

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

   Sidebar TESTING - indented lines comprise
   the body of the sidebar, and are
   interpreted as body elements. Go to town on a horse.

.. container:: hero-header-image

   F5 Cloud Native Functions

.. container:: youtube-sidebar

   ..  youtube:: 7riGQIJRJgI
       :width: 295
       :height: 135

.. container:: hero-header-block

   Unleash the power of Kubernetes on the world and your family

.. mermaid::
   :caption: Service Proxy for Kubernetes

   graph LR;

       a([Diameter - TCP/SCTP]) --- spk[Service <img src=https://img.shields.io/badge/LABEL-MESSAGE-COLOR.svg?logo=LOGO> Proxy]
       b([SIP - TCP/UDP]) --- spk
       c([HTTP/2 - TCP]) --- spk

       subgraph bigipnext [BIG-IP - NEXT]
           spk
       end
           spk --- pod1(Replica Set)
           spk --- pod2(Replica Set)
           spk --- pod3(Replica Set)
       subgraph k8scluster [K8S Cluster]
           subgraph "Diameter"
               pod1
           end
           subgraph "HTTP/2"
               pod2
           end
           subgraph "SIP"
               pod3
           end
           pod1 --- aspenmesh
           pod2 --- aspenmesh
           pod3 --- aspenmesh
       end

       classDef protocols fill:#fff1f0,stroke:#000000,stroke-width:1px,color:#000,border-style:solid;
       classDef f5 fill:#ddd,stroke:#000000,stroke-width:1px,color:#000;
       classDef k8s fill:#326ce5,stroke:#000000,stroke-width:1px,color:#ffffff;
       classDef cluster fill:#fff,stroke:#bbb,stroke-width:2px,color:#326ce5;
       class a,b,c protocols;
       class spk,aspenmesh f5;
       class pod1,pod2,pod3,pod4,pod5,pod6 k8s;
       class k8scluster cluster;

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


.. topic:: Your Topic Title

    Subsequent indented lines comprise
    the body of the topic, and are
    interpreted as body elements.

.. container:: topic

   F5 Cloud Native network functions.

#. Blue Items

   The first paragraph in an ordered list would be nice to have a gray or grey background.

   .. code-block:: console

      $ kill -9 86

   .. container:: orderedlistitem

      An orderedlistitem helps explain whats going on.

#. Red Items

   The first paragraph in an ordered list would be nice to have a gray background.

   .. code-block:: console

      $ kill -9 86

   .. container:: orderedlistitem

      An ordered list item helps explain whats going on.

