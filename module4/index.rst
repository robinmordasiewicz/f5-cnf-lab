CI/CD with Argo
============================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

   task1.rst
   task2.rst
   task3.rst


Connect to the Mgmt Jumphost. 
Note! If you open a new Web Shell connection, remember to change to the right directory 
su – ubuntu 
cd ~/my-cnf 
 
To ensure the UDF configuration is “clean” following the previous sections, run: 
cd ~/my-cnf 
./99-clean-up.sh 
./00-create-namespace.sh 
./01-on-board-cnf.sh 
./02-deploy-cnf.sh 
