===================
Content as Code
===================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

   lab-access/index.rst
   deployment/index.rst
   policies/index.rst
   cicd/index.rst

.. sidebar:: Presentation

   .. image:: index.png
      :target: index.pptx

.. container:: hero-header-image

   Content as Code

.. container:: hero-header-block

   Continuous improvement and deployment of content

.. container:: video-sidebar

   .. video:: index.mp4
      :width: 396
      :height: 210

.. topic:: Modern Application Principles

    Kubernetes is often written as K8S
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


#. Jenkins Continuous Integration

   Gitops principles define a separation of integration pipelines from the deployment pipelines.

   .. code-block:: console

      $ kubectl apply -f jenkins.yaml

   .. container:: orderedlistitem

      When the source control detects changes, a web hook triggers a series of automations which recompile code.

#. ArgoCD Continuous Deployment

   The first paragraph in an ordered list would be nice to have a gray background.

   .. code-block:: console

      $ kubectl apply -f nginx.yaml

   .. container:: orderedlistitem

      ArgoCD continuously monitors the declaration in the SCM and will automatically deploy the version defined in the application manifest.

