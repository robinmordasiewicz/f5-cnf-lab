CGNAT Policies
================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

   task1.rst
   task2.rst
   task3.rst
   task4.rst
   task5.rst
   task6.rst
   task7.rst
   task8.rst
   task9.rst
   task10.rst
   task11.rst


.. container:: topic

   Configure CGNAT and Firewall Policies


.. mermaid::

   graph TB
   subgraph "zoneB"
      p3(Pod) --> n3(Node3)
      n4(Node4)
   end
   subgraph "zoneA"
      p1(Pod) --> n1(Node1)
      p2(Pod) --> n2(Node2)
   end
 
   classDef plain fill:#ddd,stroke:#fff,stroke-width:4px,color:#000;
   classDef k8s fill:#326ce5,stroke:#fff,stroke-width:4px,color:#fff;
   classDef cluster fill:#fff,stroke:#bbb,stroke-width:2px,color:#326ce5;
   class n1,n2,n3,n4,p1,p2,p3 k8s;
   class zoneA,zoneB cluster;


.. mermaid::

   sequenceDiagram
      participant Alice
      participant Bob
      Alice->John: Hello John, how are you?
      loop Healthcheck
          John->John: Fight against hypochondria
      end
      Note right of John: Rational thoughts <br/>prevail...
      John-->Alice: Great!
      John->Bob: How about you?
      Bob-->John: Jolly good!


