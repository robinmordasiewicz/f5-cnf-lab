Create GIT Repo
============================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:


In UDF, connect directly to the GitLab UI. Login using root/passw0rd 
 
 Graphical user interface, application

Description automatically generated 

In GitLab, Create a project 
Graphical user interface, text, application, Teams

Description automatically generated 
 
Then, Create blank project 
Enter Project Name my-cnf 
Select Visibility Level Public 
Click Create project 
 
Graphical user interface, text, application, email

Description automatically generated 
 
On the SSH jumphost, configure Git: 
git config --global user.name "Administrator" 
git config --global user.email "admin@example.com" 
Create a new Git repository and push the contents to the Gitlab server 
 
git init 
git remote add origin git@gitlab.f5.local:root/my-cnf.git 
git add . 
git commit -m "Initial commit" 
git push -u origin master 
 
Return to the GitLab UI, an verify all files have been pushed into the repository. 
 
Graphical user interface, application

Description automatically generated 
