### attributes

default['nginx']['version']      = '1.12.1'
default['nginx']['package_name'] = 'nginx'
default['nginx']['port']         = ['8080','8443']
default['nginx']['default_root'] = '/var/www/nginx-default'

#define attributes for the template motd
default['motd']['group'] = 'Group2'
default['motd']['members'] = ['MOLL','PRETTNER','WÜST']
default['motd']['lecturer'] = ['KAPPEL','CHRISTOPH']
default['motd']['message'] = 'Change me'
