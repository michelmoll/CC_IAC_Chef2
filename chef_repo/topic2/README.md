# topic2

We made this Cookbook for the distribution of specific Setup on Centos 7 Servers.

Usage of Existing Cookbooks:
We have used the following cookbooks which we found in the supermarket:  
`nginx`, `openssh` & `ssh_authorized_keys`

You can change the attributes in `attributes/default.rb` to adapt the configuration to your needs. 

Attributes for `nginx`:  
- Configuration for nginx source installation
`default['nginx']['install_method'] = 'source'`  
`default['nginx']['version']      = '1.12.1'`  
`default['nginx']['source']['configure_flags'] = ['--with-http_ssl_module']`  
  
- Ports to listen to  
`default['nginx']['port'] = ['8080', '8443']`    
  
- Set to true, if you want to start out with the default site provided by the installation  
`default['nginx']['default_site_enabled'] = false`   

See https://supermarket.chef.io/cookbooks/nginx for more details on attributes for the nginx cookbook.  
  
For motd (message of the day) the following attributes are available:  
`default['motd']['group']`    
`default['motd']['members']`    
`default['motd']['lecturer']`     
`default['motd']['message']`     
  
Attributes for openssh:  
`default['openssh']['server']['Protocol'] = 2;` (only use ssh version 2)  
`default['openssh']['server']['PermitRootLogin'] = 'no'`   

See https://supermarket.chef.io/cookbooks/openssh for more details on the attributes for the openssh cookbook.   
  
Recipe:
In the recipe we have done the installation of simple software component, the administration of users incl. privileges and we have included the existing cookbooks.
  
Metadata:
In the metadata we have set the dependencies for the existing cookbooks.


