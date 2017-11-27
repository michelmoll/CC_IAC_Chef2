### attributes

default['nginx']['version']      = '1.12.1'
default['nginx']['package_name'] = 'nginx'
default['nginx']['port'] = '8080'
default['nginx']['default_root'] = '/var/www/nginx-default'
#default['nginx']['default_site_enabled'] = true

#define attributes for the template motd
default['motd']['group'] = 'GROUP2'
default['motd']['members'] = ['MOLL','PRETTNER','WÜST']
default['motd']['lecturer'] = 'CHRISTOPH,KAPPEL'
default['motd']['message'] = 'Change me'
