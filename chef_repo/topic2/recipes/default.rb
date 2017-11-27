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

user 'ckappel' do
	action :create
	home '/home/linuxguru'
	manage_home true
	shell '/bin/bash'
	gid 'root'
end

ssh_authorize_key 'christoph@bytesource.net' do
	key 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC8P/xCm04oGnW48GtGGHOBnrM6PBThwo0213DGf1Q8b+8Nau/g3Yk1F+yToLT85GfqHBiLEBP1WGsAVgIcoluE5JWl03PJnz8WcoVh7I5nYiuSjhFAguNc8z/0qHypWpU+VmWfQnee7yGTIBHF27TBouSwBjsJKBkYaTzF7llVAYy873v6K6Owmfx28YxhrZEx1HgyoHl6AbYZh9dmbRsMtO3WR6hThtTfiFSHa/XNEMsB/VTF8aQOXFy3BYqCe1CWQ6QNZpdZwRep2cVqiRKlzv1JXS+R8PbdGkMMq/e92J4p1e+4qea3BjQLozY8rvneVYaooYFeFGzRvi18ceCV'
	user 'ckappel'
	group 'root'
	home '/home/linuxguru'
end

user 'animmervoll' do
	action :remove
end

include_recipe 'nginx::default'

directory '/etc/nginx' do
	action :create
end

directory '/etc/nginx/sites-available' do
	action :create
end

nginx_site "default" do 
	enable true 
	template 'default-site.erb'
end 
