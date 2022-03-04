Deploy Firewall Policies 
============================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

Apply the configuration using the commands below 
kubectl apply -f fw-policy/01-acl-hsl.yaml 
kubectl apply -f fw-policy/02-acl-log-profile.yaml 
kubectl apply -f fw-policy/03-acl-rules.yaml 
 
kubectl apply -f cgn-policy/61-natpolicy1-nat64.yaml 
 
# Apply FW rules to NAT 64 Rules 
kubectl apply -f fw-policy/62-vs-securefastl4-nat64-http-with-fw.yaml 
kubectl apply -f fw-policy/63-vs-securefastl4-nat64-https-with-fw.yaml 
View the various FW policies to see how they are defined by K8s CRDs: 
cat fw-policy/03-acl-rules.yaml 
cat fw-policy/62-vs-securefastl4-nat64-http-with-fw.yaml 
