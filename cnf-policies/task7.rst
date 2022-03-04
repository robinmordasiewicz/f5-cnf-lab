Cleanup
=================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

Remove the configuration using the commands below 
kubectl delete -f cgn-policy/01-hsl-elk.yaml 
kubectl delete -f cgn-policy/02-seclog-profile.yaml 
kubectl delete -f cgn-policy/61-natpolicy1-nat64.yaml 
kubectl delete -f cgn-policy/62-vs-securefastl4-nat64-http.yaml 
kubectl delete -f cgn-policy/63-vs-securefastl4-nat64-https.yaml 
 
kubectl delete -f cgn-policy/41-natpolicy2-nat44.yaml 
kubectl delete -f cgn-policy/42-vs-securefastl4-nat44-http.yaml 
kubectl delete -f cgn-policy/43-vs-securefastl4-nat44-https.yaml 
Verify the policy has been removed (curl no longer works) 
