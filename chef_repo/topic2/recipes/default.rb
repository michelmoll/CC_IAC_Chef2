#
# Cookbook:: topic2
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#execute "update-upgrade" do
#	command "yum update -y"
#	action :run
#end



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

#package 'nginx' do
#	version '1.12.1'
#end

user 'ckappel' do
	action :create
	home '/home/linuxguru/'
	manage_home true
	shell '/bin/bash'
	gid 'root'
end

user 'animmervoll' do
	action :remove
end

#nginx_site "default" do 
#	enable true 
#	template 'default-site.erb'
#end 

include_recipe 'nginx::default'
