Demonstrate CI/CD NAT44 Policy Update
=======================================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

Re-configure Subscriber Client (UE) to use only IPv4 
Re-configure Subscriber Client (UE) to use only IPv4 on ens6 traffic interface 
~ubuntu/ipv4-* 
ip -4 a 
dig web1.cnf.local 
curl web1.cnf.local 
 
At this point, “curl” should fail as there is no CGNAT policy deployed. 
TIP: You can leaving curl running continuously (every 2 seconds) using the watch command. 
watch curl -s http://web1.cnf.local 
 
Log into ArgoCD 
 Graphical user interface, application

Description automatically generated 
 
Alternatively, Log in via Subscriber Client browser 
GitLab http://10.1.1.15 root/passw0rd 
ArgoCD https://10.1.1.7:30422/login admin/passw0rd) 
 
 
Configure ArgoCD 
 
Select + New App 
 
Graphical user interface, text, application, chat or text message

Description automatically generated 
 
Set-up the following ArgoCD Application: 
 
CGN Policy 
General 
Application Name: cgn-policy 
Project: cgn-policy 
Source 
Repository URL: https://gitlab.f5.local/root/my-cnf.git 
Path: cgn-policy 
Destination 
Cluster URL: https://10.1.1.4:6443 
Namespace: my-cnf 
 
 
The Argo application should deploy but will not be synchronized, as shown below.   
Graphical user interface, text, application, chat or text message

Description automatically generated 
Click on Sync, then click Synchronize in the new pane that is displayed to synchronise all settings between GitLab and the Kubernetes cluster. 
It should now be possible to connect from the Client to the Web Server. 
Explore the Argo UI. Click on cgn-policy to view the configuration and status. 
Modify NAT44 policy 
 
In the Jumphost SSH session, edit the NAT44 policy (e.g. using vi), then push this to the Gitlab repository. 
vi ~/my-cnf/cgn-policy/41-natpolicy2-nat44.yaml 
edit the port range to 3500-3600 
A picture containing text

Description automatically generated 
 
git add ~/my-cnf/cgn-policy/41-natpolicy2-nat44.yaml 
git commit -m "updated nat44 policy in cli" 
git push origin master 
 
ArgoCD can operate with either Manual or Automatic synchronisation. We are using manual synchronisation. Within the ArgoCD, synchronise as before and verify (using the Subscriber Client) that the change occurs. 

