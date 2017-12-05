### attributes

default['nginx']['install_method'] = 'source'
default['nginx']['version']      = '1.12.1'
default['nginx']['package_name'] = 'nginx'
default['nginx']['port'] = ['8080', '8443']
default['nginx']['default_root'] = '/var/www/nginx'
default['nginx']['default_site_enabled'] = false
default['nginx']['source']['configure_flags'] = ['--with-http_ssl_module']

#define attributes for the template motd
default['motd']['group'] = 'GROUP2'
default['motd']['members'] = ['MOLL','PRETTNER','WÜST']
default['motd']['lecturer'] = 'CHRISTOPH,KAPPEL'
default['motd']['message'] = 'Change me'

default['openssh']['server']['Protocol'] = 2;
default['openssh']['server']['PermitRootLogin'] = 'no'