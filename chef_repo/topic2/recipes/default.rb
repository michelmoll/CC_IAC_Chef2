#
# Cookbook:: topic2
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'openssh' do
	    action :upgrade
end

package ['vim', 'nano', 'git', 'vi', 'tree', 'rsyslog'] do
	    action :upgrade
end

template '/etc/motd' do
	source 'motd.erb'
	owner 'root'
	group 'root'
    mode '0755'
    variables  ({
        group: node['motd']['group'],
        members: node['motd']['members'],
        lecturer: node['motd']['lecturer'],
        message: node['motd']['message']
        })
end

package 'nginx' do
	version '1.12.2'
end

user 'ckappel' do
	home '/home/linuxguru'
	shell '/bin/bash'
	gid ''
	
end

user 'animmervoll' do
	action :remove
end

service "nginx" do
	action :start
end

include_recipe 'nginx::default' #nur ein code snippet vom lector
