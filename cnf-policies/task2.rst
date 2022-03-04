Apply CGN Config
====================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

Connect to the Mgmt Jumphost. 
Note! If you open a new Web Shell connection, remember to change to the right directory 
su – ubuntu 
cd ~/my-cnf 
 
Apply the following configuration 
kubectl apply -f cgn-policy/01-hsl-elk.yaml 
kubectl apply -f cgn-policy/02-seclog-profile.yaml 
kubectl apply -f cgn-policy/03-cnf-calico-pod-net-static-route.yaml 
kubectl apply -f cgn-policy/04-cnf-ue-static-route.yaml 
 
# NAT 64 
kubectl apply -f cgn-policy/61-natpolicy1-nat64.yaml 
kubectl apply -f cgn-policy/62-vs-securefastl4-nat64-http.yaml 
kubectl apply -f cgn-policy/63-vs-securefastl4-nat64-https.yaml 
 
kubectl apply -f cgn-policy/99-cnf-static-route-default-gw.yaml 
 
# NAT 44 
kubectl apply -f cgn-policy/41-natpolicy2-nat44.yaml 
kubectl apply -f cgn-policy/42-vs-securefastl4-nat44-http.yaml 
kubectl apply -f cgn-policy/43-vs-securefastl4-nat44-https.yaml 
 
Test connectivity from the Subscriber Client (UE) 
ping web1.cnf.local 
curl web1.cnf.local 
At this point, “curl” should return HTML content. This includes details of the IP addressing. 
 
View the applied NAT44 policy, and verify the translation is performed correctly. 
 
cat cgn-policy/41-natpolicy2-nat44.yaml 
apiVersion: "k8s.f5net.com/v1" 
kind: F5SPKNatPolicy 
metadata: 
  name: "natpolicy2" 
spec: 
  sourceTranslation: 
    - name: "srctr2" 
      type: "dynamic-pat" 
      addresses: 
        - "10.10.10.128/25" 
      port: "5000-5100" 
  rule: 
    - name: rule2 
      ipProtocol: tcp 
      sourceAddresses: 
        - "10.1.30.16" 
      destinationAddresses: [] 
      destinationPorts: [] 
      sourceTranslation: "srctr2" 
