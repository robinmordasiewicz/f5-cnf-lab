Debug
=================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

View Virtual Server statistics directly from CLI. We do this by using kubectl to execute a command directly on the debug container in the tmm pod. 
kubectl exec -it deployment/f5-tmm -c debug -n my-cnf -- tmctl -f /var/tmstat/blade/tmm0 virtual_server_stat -s name,serverside.tot_conns 
 
Use the ‘debug’ scripts to run multiple kubectl exec commands below: 
./debug-tmctl.sh to view multiple statistics 
./debug-bdt-cli.sh to see connection table 
./debug-config-viewer.sh to view configuration 
 
Use can inspect the scripts with cat to see the kubectl exec commands being used. 
