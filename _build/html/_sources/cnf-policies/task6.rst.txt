Demonstrate NAT64
===================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

For deployment with IPv6-only clients, we can use NAT64. 
Configure Subscriber Client (UE) to use only IPv6 
SSH to Subscriber Client and configure to use only IPv6 on ens6 traffic interface. 
~ubuntu/ipv6-only-interface.sh 
ip -6 a 
dig AAAA web1.cnf.local 
curl -6 web1.cnf.local 
