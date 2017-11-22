### attributes

default['nginx']['version']      = '1.12.2'
default['nginx']['package_name'] = 'nginx'
default['nginx']['port']         = '8080,8443'
default['nginx']['dir']          = '/etc/nginx'
default['nginx']['script_dir']   = '/usr/sbin'
default['nginx']['log_dir']      = '/var/log/nginx'
default['nginx']['log_dir_perm'] = '0750'
default['nginx']['binary']       = '/usr/sbin/nginx'
default['nginx']['default_root'] = '/var/www/nginx-default'
default['nginx']['ulimit']       = '1024'

#define attributes for the template motd
default['modt']['group'] = 'Group2'
default['modt']['members'] = ['MOLL','PRETTNER','WÜST']
default['modt']['lecturer'] = ['KAPPEL','CHRISTOPH']
default['modt']['message'] = 'Change me'
