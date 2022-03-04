Remove Firewall Policies
=========================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

Remove the configuration using the commands below 
# Remove Firewall rules 
kubectl delete -f fw-policy/03-acl-rules.yaml 
kubectl delete -f fw-policy/02-acl-log-profile.yaml 
kubectl delete -f fw-policy/01-acl-hsl.yaml 
 
kubectl delete -f cgn-policy/61-natpolicy1-nat64.yaml 
 
# Remove FW rules to NAT 64 Rules 
kubectl delete -f fw-policy/62-vs-securefastl4-nat64-http-with-fw.yaml 
kubectl delete -f fw-policy/63-vs-securefastl4-nat64-https-with-fw.yaml 
