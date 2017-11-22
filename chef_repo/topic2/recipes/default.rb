#
# Cookbook:: topic2
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

execute "update-upgrade" do
	command "apt-get update && apt-get upgrade -y"
	acrion :run
end

package 'openssh' do
	    action :upgrade
end

package 'vim' 'nano' 'git' 'vi' 'tree' 'rsyslog' do
	    action :upgrade
end

template '/etc/motd' do
	source 'motd.erb'
	owner 'root'
	group 'root'
    mode '0755'
end

package 'nginx' do
	    version '1.12.2'
end

user 'ckappel' do
	home '/home/linuxguru'
	shell '/bin/bash'
	password
	gid ''

end

user 'animmervoll' do
	action :remove
end

service "nginx" do
	action :start
end

