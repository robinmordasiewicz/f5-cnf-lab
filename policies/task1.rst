View NAT44
=============

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

.. container:: topic

   Typical deployments use NAT44 to map private UE addressing to Public IPs. This demo uses NAPT translation – other translation techniques (e.g. PBA) will be shown in future demos. 

.. sidebar:: reST content elements

   At this point, “ping” and “curl” should fail as there is no CGNAT policy deployed. 

#. Configure UE to use only IPv4

   SSH to Subscriber Client (UE) and configure UE to use only IPv4 on ens6 traffic interface.

   .. code-block:: console

      $ ~ubuntu/ipv4-only-interface.sh 
      $ ip -4 a (or ip addr show ens6) 
 
#. Check the status of connectivity between UE and the test Web Server

   .. code-block:: console

      $ dig web1.cnf.local 
      $ ping web1.cnf.local 
      $ curl web1.cnf.local

.. container:: subtopic

   You can also connect via RDP to the Subscriber Client (UE) Desktop. This enables testing using a Web Browser.
   Note: The Subscriber Client credentials are ubuntu/passw0rd 

