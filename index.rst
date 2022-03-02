CNF Lab Guide
===================

.. toctree::
   :titlesonly:
   :maxdepth: 10
   :glob:

   module1/index.rst
   module2/index.rst
   module3/index.rst
   module4/index.rst

This lab will demonstrate BIG-IP CGN deployed as a Cloud-Native Network Function (CNF)

.. tabs::

   .. group-tab:: Commands       
                            
      ::                                   
                                     
         pip install -r Documentation/requirements.txt

   .. group-tab:: Shell Output                       
          
      .. code-block:: shell-session            
                
         $ pip install -r Documentation/requirements.txt
         Collecting alabaster==0.7.12 (from -r Documentation/requirements.txt (line 1))
           Downloading https://files.pythonhosted.org/packages/10/ad/00b090d23a222943eb0eda509720a404f531a439e803f6538f35136cae9e/alabaster-0.7.12-py2.py3-none-any.whl
         ...
         Successfully installed Babel-2.6.0 Jinja2-2.10 MarkupSafe-1.0 PyEnchant-2.0.0 PyYAML-4.2b1 Pygments-2.2.0 Sphinx-1.8.1 alabaster-0.7.12 certifi-2018.10.15 chardet-3.0.4 commonmark-0.5.4 docutils-0.14 functools32-3.2.3.post2 idna-2.7 imagesize-1.1.0 jsonschema-2.6.0 packaging-19.0 pyparsing-2.3.1 pytz-2018.7 #


.. highlight:: bash
   :linenothreshold: 10
   :linenos:

   #!/bin/bash
   # Some cool Bash code
   echo ${BASH_VERSINFO[*]}

.. code-block:: rst
   :caption: Documentation

   A bit of **rst** which should be *highlighted* properly.


.. code-block:: python
   :caption: Script
   :linenos:

   import sys
   sys.exit(1)

.. code-block:: bash

   $ ls -lsa .
   $ make file

.. code:: sh 

   ls -l

.. code-block:: console

   $ ls -lsa .
   $ make file
