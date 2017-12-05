# topic2

We made this Cookbook for the distribution of specific Setup on Centos 7 Servers.

<<<<<<< HEAD
Usage of Existing Cookbooks:
We have used the following cookbooks which we found in the supermarket: nginx, openssh & ssh_authorized_keys

We have used Attributed for the following reasons:
Define several parameters for nginx. (e.g. Version to be installed, ports to be opened, ...)
Define the Artibuted that are Used in the motd.

Recipe:
In the recipe we have done the installation of simple software component, the administration of users incl. privileges and we have included the existing cookbooks.

Metadata:
In the metadata we have set the dependencies for the existing cookbooks.
=======

For the message of the day the following attributes are available:

default['motd']['group'] 
default['motd']['members'] 
default['motd']['lecturer'] 
default['motd']['message'] 
>>>>>>> origin/master
