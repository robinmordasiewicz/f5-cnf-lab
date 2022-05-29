===========================
Containerized Packs
===========================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

   lab-access/index.rst
   deployment/index.rst
   policies/index.rst
   cicd/index.rst

.. sidebar:: Sidebar Title
   :subtitle: Sidebar Subtitle

   Sidebar TESTING - indented lines comprise
   the body of the sidebar, and are
   interpreted as body elements. Go to town on a horse.
   Or ride a scooter

.. container:: hero-header-image

   Cloud Native - CGNAT

.. container:: hero-header-block

   F5 CGNAT cloud native container in K8S

.. container:: video-sidebar

   .. video:: intro.mp4
      :width: 396
      :height: 210

.. topic:: CGNAT Container

    Subsequent indented lines comprise
    the body of the topic, and are
    interpreted as body elements.

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


#. Blue Items

   The first paragraph in an ordered list would be nice to have a gray or grey background.

   .. code-block:: console

      $ kill -9

   .. container:: orderedlistitem

      An orderedlistitem helps explain whats going on.

#. Red Items

   The first paragraph in an ordered list would be nice to have a gray background.

   .. code-block:: console

      $ kill -9 86

   .. container:: orderedlistitem

      An ordered list item helps explain whats going on.

